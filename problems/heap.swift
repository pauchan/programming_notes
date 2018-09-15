import Foundation

class Heap {

	private var root: Node?
	
	func insert(int value) {
		let n = Node(value = value)
		// traverse breadth and find first null node
		if root == null {
			root = n
		} else {
			var stack = root
			while stack.count != 0 {
				if stack[0].left != null {
					stack.append(stack[0].left)
				} else {
					n.parent = stack[0]
					stack[0].left = n
					break
				}
				if stack[0].right != null {
					stack.append(stack[0].right)
				} else {
				n.parent = stack[0]
					stack[0].right = n
					break
				}
				stack.remove(at: 0)
			}

			// bubble up to as far as it should be
			while(n.parent.value > n.value) {
				var temp = n.parent
				n.parent = n.parent.parent

			}
		}
	}

	func getMin() -> int {
		return root.value
	}

	private func heapify() {

	}
}

class Node {
	var value: int
	var parent: Node
	var  left: Node
	var  right: Node
}