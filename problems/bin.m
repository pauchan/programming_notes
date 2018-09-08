#import <Foundation/Foundation.h>
#import <stdio.h>


@interface BinarySearch: NSObject
+(NSInteger)binarySearchIn:(NSArray<NSNumber *> *)arr for:(NSInteger)target;
+(NSArray<NSNumber *> *)swap:(NSArray<NSNumber *> *)arr atIndex:(NSInteger)index;
@end

@implementation BinarySearch

+(NSInteger)binarySearchIn:(NSArray<NSNumber *> *)arr for:(NSInteger)target {

	if(arr.count == 0) {
		return -1;
	}

	NSInteger min =  0;
	NSInteger max = arr.count - 1;
	while (min != max) {

		NSInteger split = (max + min) / 2;
		if ([arr[split] integerValue] == target) {
			return split;
		} else if ([arr[split] integerValue] > target) {
			max = split - 1 ;
		} else {
			min = split + 1;
		}
	}
	if ([arr[max] integerValue] == target) {
		return max;
	} else {
		return -1;
	}
}

+(void)rotate:(NSMutableArray<NSNumber *> *)arr from:(NSInteger)from to:(NSInteger)to {

	for(int i=0;i<(to-from+1)/2;i++) {
		NSNumber *temp = arr[from+i];
		[arr replaceObjectAtIndex: from+i withObject: arr[to-i]];
		[arr replaceObjectAtIndex: to-i withObject: temp];
	}
}

+(NSArray<NSNumber *> *)swap:(NSArray<NSNumber *> *)a atIndex:(NSInteger)index {

	NSMutableArray<NSNumber *>*arr = [a mutableCopy];
	[BinarySearch rotate: arr from: 0 to: index-1];
	NSLog(@"%@", arr);
	[BinarySearch rotate: arr from: index to: arr.count-1];
	NSLog(@"%@", arr);
	[BinarySearch rotate: arr from: 0 to: arr.count-1];
	NSLog(@"%@", arr);
	return [arr copy];
}

@end

int main(int argc, char *argv[]) {
		NSArray *test = @[@1,@2,@3, @4, @5];
		//NSInteger index = [BinarySearch binarySearchIn: test2 for: 3];
		NSArray *x = [BinarySearch swap: test atIndex: 2];
		NSLog(@"%@", x);
}