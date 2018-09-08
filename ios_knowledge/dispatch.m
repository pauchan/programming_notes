#import <Foundation/Foundation.h>
#import <stdio.h>

@interface ObjectBool: NSObject

@property (nonatomic) BOOL cancel;

@end

@implementation ObjectBool

@end

ObjectBool * cancellableDispatchAfter(dispatch_time_t delay, dispatch_queue_t queue, void(^completion)(void)) {
	
	ObjectBool *oBool = [ObjectBool new];
	oBool.cancel = false;
	NSNumber* n = [NSNumber numberWithBool: NO];
	dispatch_after(delay,queue, ^(void) {
		if(oBool.cancel) {
			NSLog(@"cancelled");
			return;
		} else {
			completion();
		}
	});
	return oBool;
}

int main(int argc, const char * argv[]){
	@autoreleasepool {

		dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, 3.0*NSEC_PER_SEC);
		ObjectBool *test = cancellableDispatchAfter(time, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{

			NSLog(@"completed");
		});
		test.cancel = false;
		[NSThread sleepForTimeInterval: 4.0];
	}
}