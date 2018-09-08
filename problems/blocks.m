#import <Foundation/Foundation.h>
#import <stdio.h>

void cancellable_dispatch_after(dispatch_time_t when, dispatch_queue_t queue, BOOL *shouldCancel, void(^block)(void)) {
	//__block BOOL *shouldC = shouldCancel;
	//NSLog(@"address during: %p", shouldC);
	dispatch_after(when, queue, ^(void) {
		//NSLog(@"address aftere: %p", shouldC);
		if(*shouldCancel) {
			NSLog(@"cancelled!!!");
			return;
		}
		NSLog(@"completed");
		block();
	});
}

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		BOOL *cancel = malloc(sizeof(BOOL));
		*cancel = NO;
		NSLog(@"address before: %p", cancel);
		dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 3.0 * NSEC_PER_SEC);
		cancellable_dispatch_after(popTime, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), cancel, ^(void) {
			NSLog(@"called");
		});

		*cancel = YES;
		[NSThread sleepForTimeInterval:5.0f];
		free(cancel);
	}
}