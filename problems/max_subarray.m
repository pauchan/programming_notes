#import <Foundation/Foundation.h>
#import <stdio.h>

@interface Subarray: NSObject

+(NSInteger)findSubarray:(NSArray *)array;

@end

@implementation Subarray

+(NSInteger)findSubarray:(NSArray *)array {
	int min_sum=0;
	int sum=0;
	int max_sum=0;
	for(int i=0;i<array.count;i++) {
		sum += [array[i] intValue];
		if(sum < min_sum) {
			min_sum = sum;
		}
		if(sum-min_sum > max_sum) {
			max_sum = sum - min_sum;
		}
	}
	return max_sum;
}

@end

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		NSArray *a = @[@904, @40, @523, @12, @-335, @-385, @-124, @481, @-31];
		NSLog(@"result: %d",[Subarray findSubarray: a]);
	}
}