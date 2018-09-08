#import "Node.h"

@implementation Node

-(instancetype)init {
    self = [super init];
    _childrens = [NSMutableDictionary new];
    return self;
}

@end
