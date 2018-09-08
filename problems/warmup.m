#import <Foundation/Foundation.h>
#import <stdio.h>

@interface Quicksort: NSObject

+(NSMutableArray *)quicksort:(NSMutableArray *)arr low:(NSInteger)low high:(NSInteger)high;

@end

@implementation Quicksort

+(NSMutableArray *)quicksort:(NSMutableArray *)arr low:(NSInteger)low high:(NSInteger)high {

	NSInteger pi;
	if (high > low) {

		pi = [Quicksort partition: arr low:low high:high];
		[Quicksort quicksort: arr low:0 high: pi-1];
		[Quicksort quicksort: arr low:pi high: high];
	}

	return arr;
} 

+(NSInteger)partition:(NSMutableArray *)arr low:(NSInteger)low high:(NSInteger)high {

	NSNumber *pivot = arr[high];

	NSInteger i = low - 1;
	for (NSInteger j = low; j <= high - 1;j++) {

		if(arr[j] <= pivot) {

			i++;
			NSNumber *temp = arr[i];
			[arr replaceObjectAtIndex:i withObject: arr[j]];
			[arr replaceObjectAtIndex:j withObject: temp];
		}
	}
	NSNumber *temp = arr[i+1];
	[arr replaceObjectAtIndex: i+1 withObject: arr[high]];
	[arr replaceObjectAtIndex: high withObject: temp];
	return i+1;
}

@end


int main(int argc, char * argv[]) {

	NSMutableArray *test = [NSMutableArray arrayWithArray: @[@3,@12,@7,@9,@4,@6,@15,@8,@10,@2,@11,@5,@13,@14,@1]];

	[Quicksort quicksort: test low: 0 high: test.count-1];
	return 0;
}

