#import <Foundation/Foundation.h>
#import <stdio.h>

@interface Node: NSObject

@property (nonatomic, strong) NSNumber *value;
@property (nonatomic, strong) Node *next;

@end

@implementation Node

@end

@interface LinkedList: NSObject

@property (nonatomic, strong) Node *head;
-(void)reverse;

@end

// NSLog(@"current: %p", currentNode);
// NSLog(@"next temp: %p", next);
// NSLog(@"next temp after substitution: %p", next);
// 		NSLog(@"current after substitution: %p", currentNode);
// 		NSLog(@"previous after substitution: %p", previousNode);

@implementation LinkedList

-(void)reverse {
	
	Node *previousNode = self.head;
	Node *currentNode = self.head.next;
	while(currentNode != nil) {
        NSLog(@"BEFORE: previousNode: %@ currentNode: %@", previousNode.value, currentNode.value);
		NSLog(@"visited: %@", currentNode.value);

        // set temps
		Node *next = currentNode.next;

        //reverse
		currentNode.next = previousNode;

        //advance
        previousNode = currentNode;
		currentNode = next;

        NSLog(@"AFTER: previousNode: %@ currentNode: %@", previousNode.value, currentNode.value);
	}
	self.head.next = nil;
	self.head = previousNode;
}

@end

int main(int argc, const char *argv[]) {
	@autoreleasepool {

	Node *first = [Node new];
    first.value = @1;
    Node *second = [Node new];
    second.value = @2;
    Node *third = [Node new];
    third.value = @3;
    Node *fourth = [Node new];
    fourth.value = @4;
    Node *fifth = [Node new];
    fifth.value = @5;
    Node *sixth = [Node new];
    sixth.value = @6;
    Node *seventh = [Node new];
    seventh.value = @7;
    Node *eight = [Node new];
    eight.value = @8;
    
    first.next = second;
    second.next= third;
    third.next = fourth;
    fourth.next = fifth;
    fifth.next = sixth;
    sixth.next = seventh;
    seventh.next = eight;
    eight.next = nil;

    LinkedList *l = [LinkedList new];
    l.head = first;
    [l reverse];
    Node *current = l.head;
    while(current != nil) {
    	NSLog(@"%@", current.value);
    	current = current.next;
    }

	}
}