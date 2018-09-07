#import <Foundation/Foundation.h>
#import <stdio.h>


int main(int argc, const char * argv[]) {
	@autoreleasepool {
		NSArray *a = @[@0, @2, @"k", @"0"];
		for(id obj in a) {
			NSLog(@"is number* %d",[obj isKindOfClass:[NSNumber class]]);
			NSLog(@"is zero* %d",[obj isEqualTo:@0]);
		}
	}
}