#import "Trie.h"
#import "Node.h"

@interface Trie()

@property (nonatomic, copy) Node *root;

@end

@implementation Trie

-(instancetype)initWithWords:(NSArray *)words {

    self = [super init];
    [self generateTrieFromWords: words];
    return self;
}

-(void)generateTrieFromWords:(NSArray *)words {
    for (NSString *word in words) {
        NSArray *a = [self charArrayForWord:word];
        [self insertWord:a toNode:self.root];
    }
}

-(void)insertWord:(NSArray *)word toNode:(Node *)node {
    NSArray *a = [word subarrayWithRange:NSMakeRange(1, word.count-1)];
    
    Node *existingNode = [node.childrens objectForKey:word[0]];
    if(existingNode == nil) {
        existingNode = [[Node alloc] init];
        [node.childrens setObject:existingNode forKey:word[0]];
    }
    if(a.count == 0) {
        node.isCompleteWord = YES;
        return;
    }
    [self insertWord:a toNode:node];
}

-(NSArray *)charArrayForWord:(NSString *)word {
    NSMutableArray *m = [NSMutableArray new];
    NSUInteger length = word.length;
    unichar buffer[length+1];
    NSRange r = NSMakeRange(0, length);
    [word getCharacters:buffer range:r];
    for(int i=0;i<length;i++) {
        NSString *s = [NSString stringWithFormat:@"%C", buffer[i]];
        [m addObject:s];
    }
    return [m copy];
}

-(NSArray *)getWordsForPrefix:(NSString *)prefix {
    Node *n = [self getNodeForPrefix:prefix];
    return [self getSuffixForNode:n];
}

-(NSArray *)getSuffixForNode:(Node *)node {
    NSMutableArray *a = [NSMutableArray new];
    for(Node *n in node.childrens.allValues) {
        [a addObjectsFromArray:[self getSuffixForNode:n]];
    }
    if(node.isCompleteWord) {
        [a addObject:node];
    }
    return [a copy];
}

-(Node *)getNodeForPrefix:(NSString *)prefix {
    NSArray *a = [self charArrayForWord:prefix];
    Node *node = self.root;
    for(NSString *s in a) {
        Node *nextNode = [node.childrens objectForKey:s];
        if(nextNode == nil) {
            return nil;
        }
        node = nextNode;
    }
    return node;
}

@end
