#import <Foundation/Foundation.h>
#import <stdio.h>

@interface Node: NSObject

@property (nonatomic, strong) Node *left;
@property (nonatomic, strong) Node *right;
@property (nonatomic) NSInteger value;

-(instancetype)initWithValue:(NSInteger)value left:(Node *)left right:(Node *)right;

@end

@implementation Node

-(instancetype)initWithValue:(NSInteger)value left:(Node *)left right:(Node *)right {

	self = [super init];
	if (self == nil) {
		return self;
	}
	_left = left;
	_right = right;
	_value = value;
	return self;
}

@end

@interface Heapify: NSObject

@property (nonatomic, strong) Node *root;
-(void)heapify;
-(void)preorderTraversal;

@end

@implementation Heapify

-(void)heapify {
	[self heapifyNode: self.root];
}

-(void)heapifyNode:(Node *)node {
	if(node.left.value <= node.value && node.right.value <= node.value) {
		return;
	}

	[self heapifyNode: node.left];
	[self heapifyNode: node.right];

	if(node.left.value > node.value && node.left.value > node.right.value) {
		NSInteger temp = node.value;
		node.value = node.left.value;
		node.left.value = temp;
		[self heapifyNode: node.left];
	} else {
		NSInteger temp = node.value;
		node.value = node.right.value;
		node.right.value = temp;
		[self heapifyNode: node.right];
	}
}

 -(void)preorderTraversal {

 	 [self preorderTraverseNode:self.root];
}

-(void)preorderTraverseNode:(Node *)node {

  if(node == nil) {
    return;
  }
  
  NSLog(@"node: %i", node.value);
  [self preorderTraverseNode:node.left];
  [self preorderTraverseNode:node.right];
}

@end

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		Node *n4 = [[Node alloc] initWithValue:4 left:nil right:nil];
    	Node *n5 = [[Node alloc] initWithValue:5 left:nil right:nil];
    	Node *n6 = [[Node alloc] initWithValue:6 left:nil right:nil];
    	Node *n7 = [[Node alloc] initWithValue:7 left:nil right:nil];
    	Node *n2 = [[Node alloc] initWithValue:2 left:n4 right:n5];
    	Node *n3 = [[Node alloc] initWithValue:3 left:n6 right:n7];
    	Node *n = [[Node alloc] initWithValue:1 left:n2 right:n3];
    	Heapify *t = [Heapify new];
    	t.root = n;
    	[t heapify];
    	[t preorderTraversal];
	}
}