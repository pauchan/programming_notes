#import <Foundation/Foundation.h>
#import <stdio.h>

@interface DP: NSObject 

+(NSInteger)resultFor:(NSInteger)sum array:(NSArray *)array;

@end

@implementation DP

+(NSInteger)resultFor:(NSInteger)sum array:(NSArray *)array {
	
	NSMutableArray *results = [NSMutableArray new];
	for(int i=0; i<=sum;i++){
		[results addObject:[NSNumber numberWithInt:10000]];
	}
	results[0] = @0;
	for(int i=0;i<=sum;i++) {
		for(NSNumber *coin in array) {
			if(coin.intValue <= i && [results[i-coin.intValue] intValue]+1 < [results[i] intValue]) {
				results[i] = [NSNumber numberWithInt: [results[i-coin.intValue] intValue]+1];
			}
		}
	}
	return [results[sum] integerValue];
}

@end

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		NSArray *coins = @[@1, @3, @5];
		NSLog(@"min coin is:%d", [DP resultFor:3 array:coins]);
	}
}