#import <Foundation/Foundation.h>
#import <stdio.h>

@interface Fibonnaci: NSObject

-(NSInteger)computeFor:(NSInteger)count;
-(NSInteger)computeForDP:(NSInteger)count;

@property (nonatomic, strong) NSMutableArray *memory;

@end

@implementation Fibonnaci

-(NSInteger)computeFor:(NSInteger)count {
	if(count == 1 || count == 2) {
		return 1;
	} else {
		return [self computeFor:count-1] + [self computeFor:count-2];
	}
}

-(NSInteger)computeForDP:(NSInteger)count {
	NSInteger fminus2 = 0;
	NSInteger fminus1 = 1;
	for (NSInteger i=2;i<=count;i++) {
		NSInteger f = fminus1 + fminus2;
		fminus2 = fminus1;
		fminus1 = f;
	}
	return fminus1;
}

@end

int main(int argc, const char * argv[]) {
	@autoreleasepool {

		Fibonnaci *f = [Fibonnaci new];
		NSLog(@"fibonnaci for 12 is: %d", [f computeFor:12]);
		NSLog(@"fibonnaci for dp for 12 is: %d", [f computeForDP:12]);
	}
}