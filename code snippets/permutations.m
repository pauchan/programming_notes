#import <Foundation/Foundation.h>
#import <stdio.h>

@interface NSMutableArray (Permutator)

-(void)permute:(NSArray *)permutation;

@end

@implementation NSMutableArray (Permutator)

-(void)permute:(NSArray *)permutation {

	NSMutableArray *memory = [NSMutableArray new];
	for(int i=0;i<permutation.count;i++) {
		[memory addObject:@0];
	}

	if (self.count != permutation.count) {
		return;
	}

	for(int i=0; i<permutation.count; i++) {
		if([memory[i] isEqual: @0]) {
			NSNumber *temp = self[i];
			self[i] = self[[permutation[i] intValue]];
			self[[permutation[i] intValue]] = temp;

			memory[i] = @1;
			memory[[permutation[i] intValue]] = @1;
		}
	}
}

@end

int main(int argc, const char * argv[]) {
	@autoreleasepool{
		NSMutableArray *ma = [NSMutableArray arrayWithArray:@[@1,@2,@3,@4]];
		[ma permute:@[@3,@2,@1,@0]];
		NSLog(@"data: %@", ma);
	}
}