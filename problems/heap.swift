import Foundation

class Heap {

	private var root: Node?

	func insert(value: Int) {
		let n = Node(value: value)
		// traverse breadth and find first null node
		if root == nil {
			root = n
		} else {
			// notice how traversal happen here, insert root to queue
			// in the inner loop
			// 1. include both left and right children from the first node in the queue if present
			// 2. remove first node in the queue
			var stack = [root]
			while stack.count != 0 {
				if let left = stack[0]?.left {
					stack.append(left)
				} else {
					n.parent = stack[0]
					stack[0]?.left = n
					break
				}
				if let right = stack[0]?.right {
					stack.append(right)
				} else {
					n.parent = stack[0]
					stack[0]?.right = n
					break
				}
				stack.remove(at: 0)
			}
			bubbleUp(n: n)
		}
	}

	func bubbleUp(n: Node) {
		if(n.parent?.value ?? 0 > n.value ?? 0) {
			var temp = n.parent?.value
			n.parent?.value = n.value
			n.value = temp
			if n.parent != nil {
				// recurse here until you hit root (parent is nil)
				bubbleUp(n: n.parent!)
			}
		}
	}

	func getMin() -> Int? {
		guard let root = root else { return nil }
		let x = root.value
		root.value = nil
		swap(node: root)
		return x
	}

	private func swap(node: Node) {
		// note to myself:
	  // there can be three cases here:
	  // 1. no children so nothing to swap -> we end here
	  // 2. one children present -> we swap
	  // 3. both children present -> compare both and pick lower for swap
	  // (notice recursion, we keep going deeper)

		if node.left?.value == nil && node.right?.value == nil {
			return
		}

		if node.left?.value == nil {
			node.value = node.right!.value
			node.right!.value = nil
			swap(node: node.right!)
			// return is needed here as to not to jump to the next if clause
			return 
		}

		if node.right?.value == nil {
			node.value = node.left!.value
			node.left!.value = nil
			swap(node: node.left!)
			return
		}

		if node.left!.value! >= node.right!.value! {
			node.value = node.right!.value
			node.right!.value = nil
			swap(node: node.right!)
		} else {
			node.value = node.left!.value
			node.left!.value = nil
			swap(node: node.left!)
		}
	}
}

class Node {
	var value: Int?
	var parent: Node?
	var  left: Node?
	var  right: Node?

	init(value: Int) {
		self.value = value
	}
}

let h = Heap()
h.insert(value: 5)
h.insert(value: 111)
h.insert(value: 3)
h.insert(value: 234)
h.insert(value: 43)

print("min: \(h.getMin())")
print("min: \(h.getMin())")
print("min: \(h.getMin())")
print("min: \(h.getMin())")
print("min: \(h.getMin())")
print("min: \(h.getMin())")
