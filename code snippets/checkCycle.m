#include <Foundation/Foundation.h>

@interface Node: NSObject

@property (nonatomic, strong) Node *next;

@end

@implementation Node

@end



@interface LinkedList: NSObject

@property (nonatomic, strong) Node *head;
-(BOOL)hasCycle;

@end

@implementation LinkedList

-(BOOL)hasCycle {
	Node *slower = self.head;
	Node *faster = self.head.next;
	while(slower != nil) {
		if(slower == faster) {
			return YES;
		}
		slower = slower.next;
		faster = faster.next.next;
	}
	return NO;
}

@end


int main(int argc, char *argv[]) {
	@autoreleasepool {
		Node *n = [Node new];
		Node *n2 = [Node new];
		n.next = n2;
		Node *n3 = [Node new];
		n2.next = n3;
		n3.next = n;
		LinkedList *ll = [LinkedList new];
		ll.head = n;
		NSLog(@"%d",[ll hasCycle]);
	}
}
