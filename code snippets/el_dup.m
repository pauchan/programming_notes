#import <Foundation/Foundation.h>
#import <stdio.h>


int main(int argc, const char * argv[]) {
	@autoreleasepool {
		NSArray *a = @[@"banana", @"tennins", @"t", @"drama", @"banana", @"pizza", @"pizza", @"banana", @"piza"];
		NSSet *s = [NSSet setWithArray:a];
		NSLog(@"result: %@", s);
	}
}

