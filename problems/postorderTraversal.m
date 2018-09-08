#include <Foundation/Foundation.h>

@interface Node: NSObject

@property (nonatomic) NSInteger value;
@property (nonatomic,strong) Node *left;
@property (nonatomic,strong) Node *right;

-(instancetype)initWithValue:(NSInteger)value left:(Node *)left right:(Node *)right;

@end

@implementation Node

-(instancetype)initWithValue:(NSInteger)value left:(Node *)left right:(Node *)right {
    
    self = [super init];
    if(self != nil) {
        self.value = value;
        self.left = left;
        self.right = right;
    } else {
        return nil;
    }
    return self;
}

@end

@interface BinaryTree: NSObject

@property (nonatomic, strong) Node *root;

-(void)postorderTraversal;

@end

@implementation BinaryTree

-(void)traverse:(Node *)node {
    
    if(node.left != nil) {
        [self traverse: node.left];
    }
    if(node.right != nil) {
        [self traverse: node.right];
    }
    NSLog(@"%ld", node.value);
}

-(void)postorderTraversal {
    [self traverse: self.root];
}

@end

int main (int argc, const char * argv[])
{
  @autoreleasepool {
    
    Node *n4 = [[Node alloc] initWithValue:4 left:nil right:nil];
    Node *n5 = [[Node alloc] initWithValue:5 left:nil right:nil];
    Node *n6 = [[Node alloc] initWithValue:6 left:nil right:nil];
    Node *n7 = [[Node alloc] initWithValue:7 left:nil right:nil];
    Node *n2 = [[Node alloc] initWithValue:2 left:n4 right:n5];
    Node *n3 = [[Node alloc] initWithValue:3 left:n6 right:n7];
    Node *n = [[Node alloc] initWithValue:1 left:n2 right:n3];
    BinaryTree *t = [BinaryTree new];
    t.root = n;
    
    [t postorderTraversal];
    //NSLog(@"height: %i", [t height]);
  }
}