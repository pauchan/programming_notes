#import <Foundation/Foundation.h>
#import <stdio.h>

@interface BiggestSum: NSObject

-(NSInteger)biggestSum;

@end

@implementation BiggestSum

NSMutableArray<NSMutableArray<NSNumber *> *> *memory;

-(NSNumber *)countSumFor:(NSInteger)startingIndex length:(NSInteger)length {
	NSNumber *previous = [[memory objectAtIndex:length-1] objectAtIndex:startingIndex];
	NSNumber *next = [[memory objectAtIndex:1] objectAtIndex:startingIndex+length-1];
	return [NSNumber numberWithInteger: [previous integerValue]+[next integerValue]];	
}

-(instancetype)initWithVector:(NSArray<NSNumber *> *)vector {
	
	self = [super init];
	memory = [NSMutableArray new];
	[memory addObject:[NSMutableArray new]];
	for (NSInteger l=1;l<vector.count;l++) {
		NSMutableArray<NSNumber *> *temp = [NSMutableArray new];
		for (NSNumber *n in vector) {
			NSInteger position = [vector indexOfObject:n];
			if(position+l <= vector.count) {
				NSNumber *x;
				if (l == 1) {
					x = n;
				} else {
					x = [self countSumFor:position length:l];
				}
				[temp addObject:x];
			}
		}
		[memory addObject:temp];
	}
	return self;
}


-(NSInteger)biggestSum {
	NSInteger max = NSIntegerMin;
	for(NSArray *i in memory) {
		for (NSNumber *j in i) {
			if ([j integerValue] > max) {
				max = [j integerValue];
			}
		}
	}
	return max;
}

+(NSInteger)biggestSum2:(NSArray<NSNumber *> *)arr {

	NSInteger maxSoFar = 0;
	NSInteger maxEndingHere = 0;
	for(NSInteger i=0;i<arr.count;i++) {
		NSInteger smiec = [arr[i] integerValue];
		maxEndingHere = MAX(maxEndingHere + smiec, 0);
		maxSoFar = MAX(maxSoFar, maxEndingHere);
	}
	return maxSoFar;
}

@end


int main(int argc, char *argv[]) {
	
	NSArray *a = @[@1, @-3, @-12, @7, @-1, @2, @-5];
	BiggestSum *bigS = [[BiggestSum alloc] initWithVector:a];
	NSInteger i = [bigS biggestSum];
	NSInteger j = [BiggestSum biggestSum2:a];
	NSLog(@"%ld %ld", i, j);
}