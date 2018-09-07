#include <Foundation/Foundation.h>

@interface Vertex: NSObject<NSCopying>

@property (nonatomic, strong) NSNumber *value;

@end

@implementation Vertex

-(instancetype)initWithValue:(NSNumber *)value {

	self = [super init];
	if (self != nil) {
		_value = value;
	}
	return self;
}

- (id)copyWithZone:(NSZone *)zone {

	Vertex *v = [[Vertex alloc] initWithValue: [self.value copy]];
	return v;
}

-(NSUInteger)hash
{
	return [self.value hash];
}

- (BOOL)isEqual:(id)object {
	Vertex *v = (Vertex *)object;
  	return self.value == v.value;
}


@end

@interface Graph: NSObject

-(void)traverse;
-(void)addEdgeFrom:(NSNumber *)from to:(NSNumber *)to;

@property (nonatomic, copy) NSMutableDictionary<Vertex *,NSMutableArray<Vertex *> *> *values;

@end

@implementation Graph


-(instancetype)init {
	self = [super init];
	if (self != nil) {
		_values = [NSMutableDictionary new];
	}
	return self;
}

-(void)addEdgeFrom:(NSNumber *)from to:(NSNumber *)to {
	Vertex *fromVertex = [[Vertex alloc] initWithValue: from];
	Vertex *toVertex = [[Vertex alloc] initWithValue: to];
	if ([self.values objectForKey:fromVertex] == nil) {
		NSMutableArray *tempArr = [NSMutableArray new];
		[tempArr addObject: toVertex];
		[self.values setObject:tempArr forKey:fromVertex];
	} else {
		NSMutableArray *tempArr = [self.values objectForKey: fromVertex];
		[tempArr addObject: toVertex];
		[self.values setObject:tempArr forKey:fromVertex];
	}
}

-(void)traverse {

	NSArray *all = [self.values allValues];
	NSMutableArray *visited = [NSMutableArray new];
	if(all.count == 0) {
		return;
	}

	NSMutableArray<Vertex *> *first = [all objectAtIndex:0];
	NSMutableArray<Vertex *> *queue = [NSMutableArray new];
	for(Vertex *m in first) {
		if(![queue containsObject:m]) {
			[queue addObject:m];
		}
	}

	NSInteger c = 1;
	while(queue.count != 0) {
		Vertex *x = [queue objectAtIndex: 0];
		[queue removeObjectAtIndex: 0];
		NSMutableArray<Vertex *> *arr = [self.values objectForKey: x];
		for(Vertex *processed in arr) {
			if(![visited containsObject: processed]) {
				[queue addObject: processed];
				[visited addObject: processed];
				NSLog(@"objectVisited: %@",processed.value);
				NSLog(@"queue: %ld",queue.count);
			}
		}
		c++;
	}
}

@end


int main(int argc, char *argv[]) {
	@autoreleasepool {

		Graph *g = [Graph new];
		[g addEdgeFrom:@1 to:@2];
		[g addEdgeFrom:@1 to:@3];
		[g addEdgeFrom:@3 to:@1];
		[g addEdgeFrom:@2 to:@1];
		[g traverse];

	}
	return 0;
}