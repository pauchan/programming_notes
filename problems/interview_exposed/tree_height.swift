import Foundation

final class Node {
	let value: Int
	var left: Node?
	var right: Node?

	init(value: Int, left: Node?, right: Node?) {
		self.value = value
		self.left = left
		self.right = right
	}
}

final class Tree {
	
	var root: Node

	init(root: Int) {
		let node = Node(value: root, left: nil, right: nil)
		self.root = node
	}

	func addNode(value: Int) {
		let node = Node(value: value, left: nil, right: nil)
		addNode(node, toNode: root)
	}

	private func addNode(_ node: Node, toNode: Node) {
		if node.value == toNode.value { 
			return 
		} else if node.value > toNode.value {
			if toNode.right != nil {
				addNode(node, toNode: toNode.right!)
			} else {
				toNode.right = node
			}
		} else { // left is bigger
			if toNode.left != nil {
				addNode(node, toNode: toNode.left!)
			} else {
				toNode.left = node
			}
		}
	}

	private func height(node: Node?) -> Int {
		guard let node = node else { return 0 }
		if node.left == nil && node.right == nil {
			return 1
		} else {
			return max(height(node: node.left), height(node: node.right)) + 1
		}
	}

	var height: Int {
		return height(node: self.root)
	}
}

var tree = Tree(root: 15)

tree.addNode(value: 34)
tree.addNode(value: 2)
tree.addNode(value: 3)
tree.addNode(value: 18)
tree.addNode(value: 213)
tree.addNode(value: 7)
tree.addNode(value: 35)
tree.addNode(value: 36)
tree.addNode(value: 12)
tree.addNode(value: 343)

print(tree.height)