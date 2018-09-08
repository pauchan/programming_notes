#import <Foundation/Foundation.h>
#import <stdio.h>


@interface SafeDispatch: NSObject

-(NSNumber *)cancellableDispatchAfter:(dispatch_time_t)delay queue:(dispatch_queue_t)queue completion:void (^completion)(void);

@end

@implementation SafeDispatch

-(NSNumber *)cancellableDispatchAfter:(dispatch_time_t)delay queue:(dispatch_queue_t)queue completion:void (^completion)(void)) {
	
	NSNumber* n = [NSNumber numberWithBool: NO];
	dispatch_asynch(delay,queue, ^(void) {
		if(n.boolValue) {
			return;
		} else {
			completion();
		}
	});
	return n;
}

@end

int main(int argc, static char * argv[]){
	@autoreleasepool {

		dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, 3.0*NSEC_PER_SEC);
		NSNumber *n =  [SafeDispatch cancellableDispatchAfter: time queue: dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0) completion: ^{

			NSLog(@"completed");
		}];
		[NSThread sleep: 2.0];
	}
}