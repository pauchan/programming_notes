import Foundation

class Heap {

	private var root: Node?
	
	func insert(value: Int) {
		let n = Node()
		n.value = value
		// traverse breadth and find first null node
		if root == nil {
			root = n
		} else {
			var stack = [root]
			while stack.count != 0 {
				print("entered loop")
				if let left = stack[0]?.left {
					stack.append(left)
					print("left to queue")
				} else {
					n.parent = stack[0]
					stack[0]?.left = n
					print("inserted left")
					break
				}
				if let right = stack[0]?.right {
					stack.append(right)
					print("right to queue")
				} else {
					n.parent = stack[0]
					stack[0]?.right = n
					print("inserted right")
					break
				}
				stack.remove(at: 0)
				print("removed at 0")
			}

			bubbleUp(n: n)
		}
	}

	func bubbleUp(n: Node) {
		if(n.parent?.value ?? 0 > n.value) {
			var temp = n.parent?.value
			n.parent?.value = n.value
			n.value = temp
			if n.parent != nil {
				bubbleUp(n: n.parent!)
			}
		}
	}

	func getMin() -> Int? {
		return root?.value
	}

	private func heapify() {

	}
}

class Node {
	var value: Int!
	var parent: Node?
	var  left: Node?
	var  right: Node?
}

let h = Heap()
h.insert(value: 5)
h.insert(value: 111)
h.insert(value: 3)
h.insert(value: 234)
h.insert(value: 43)

print(h.getMin())