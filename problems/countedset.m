#import <Foundation/Foundation.h>
#import <stdio.h>

@interface BoolObject: NSObject

@property (nonatomic) BOOL cancel;

-(void)useCompletion:(void(^)(int i, NSString *data))completion;

@end

@implementation BoolObject

-(void)useCompletion:(void(^)(int i, NSString *data))completion {

	completion;
}

@end


BoolObject * cancellable_dispatch(dispatch_time_t time, dispatch_queue_t queue, void(^block)()) {

	BoolObject *cancellable = [BoolObject new];
	cancellable.cancel = NO;
	dispatch_after(time, queue, ^{
		if(cancellable.cancel) {
			NSLog(@"cancelled");
		} else {
			block();
		}
	});
	return cancellable;
}

int main(int argc, const char * argv[]) {
	@autoreleasepool {

		dispatch_time_t t = dispatch_time(DISPATCH_TIME_NOW, 2.0*NSEC_PER_SEC);
		BoolObject *obj = cancellable_dispatch(t, dispatch_get_global_queue(0,0), ^{

			NSLog(@"not cancelled");
		});

		//obj.cancel = YES;
		[NSThread sleepForTimeInterval: 4.0];
	}
}