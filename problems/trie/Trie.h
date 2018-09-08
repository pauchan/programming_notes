#import <Foundation/Foundation.h>

@interface Trie : NSObject

-(instancetype)initWithWords:(NSArray *)words;

-(NSArray *)getWordsForPrefix:(NSString *)prefix;

@end
