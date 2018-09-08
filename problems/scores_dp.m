#import <Foundation/Foundation.h>
#import <stdio.h>

@interface Points: NSObject

+(NSArray *)scoresForScore:(NSInteger)score;

@end

@implementation Points

+(NSArray *)scoresForScore:(NSInteger)score {
	NSMutableArray *memory = [NSMutableArray new];
	[memory addObject:@[@[@0]]];

	NSArray *points = @[@2, @3, @7];

	for(int i=1;i<=score;i++) {
		[memory addObject:[NSMutableArray new]];
		for(NSNumber *point in points) {
			if(point.intValue <= i) {
				for(NSArray *a in memory[i-point.intValue]) {
					NSMutableArray *aCopy = [a mutableCopy];
					[aCopy addObject:point];
					[memory[i] addObject:aCopy];
				}
			}
		}

	}
	return memory[score];
}

@end

int main(int args, const char * argv[]) {
	@autoreleasepool {

	NSLog(@"Points: %@",[Points scoresForScore:5]);	
	}
}