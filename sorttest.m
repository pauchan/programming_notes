#import <Foundation/Foundation.h>
#import <stdio.h>

int main(int argc, const char * argv[]) {

	NSArray *a = @[@3,@12,@7,@9,@4,@6,@15,@8,@10,@2,@11,@5,@13,@14,@1];

	NSMutableArray *x = [NSMutableArray new];
	[a enumerateObjectsUsingBlock:^(NSNumber *n,NSUInteger i, BOOL *stop) {

		[x addObject: n];
		if(i==4) {
			*stop = YES;
		}
	}];

	//NSArray *sorted = [a sortedArrayUsingSelector:@selector(compare:)];
	NSLog(@"test: %@", x);
}

