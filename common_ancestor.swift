import Foundation

final class Node {
  
  let value: Int
  var left: Node?
  var right: Node?

  init(value: Int, left: Node? = nil, right: Node? = nil) {
    self.value = value
    self.left = left
    self.right = right
  }
}

final class Tree {
  
  let root: Node

  init(value: Int) {
    root = Node(value: value)
  }

  func add(_ value: Int) {
    let node = Node(value: value)
    addNode(node, toNode: root)
  }

  private func addNode(_ node: Node, toNode: Node) {
    if node.value == toNode.value {
      return
    } else if node.value > toNode.value { // add to right side
      if toNode.right == nil {
        toNode.right = node
      } else {
        addNode(node, toNode: toNode.right!)
      }
    } else { // add to left side
      if toNode.left == nil {
        toNode.left = node
      } else {
        addNode(node, toNode: toNode.left!)
      }
    }
  }

  func commonAncestor(value: Int, value2: Int) -> Int {
  	return commonAncestor(value: value, value2: value2, node: root)
  }

  private func commonAncestor(value: Int, value2: Int, node: Node) -> Int {
  	if node.value == value || node.value == value2 || node.right == nil || node.left == nil {
  		return node.value
  	}

  	if node.value > value && node.value > value2 {
  		return commonAncestor(value: value, value2: value2, node: node.left!)
  	} 

  	if node.value < value && node.value < value2 {
  		return commonAncestor(value: value, value2: value2, node: node.right!)
  	} 

  	return node.value
  }
}

var t = Tree(value: 9)
t.add(2)
t.add(7)
t.add(1)
t.add(6)
t.add(5)
t.add(10)
t.add(3)
t.add(8)
t.add(4)

print(t.commonAncestor(value: 3, value2: 10))
print(t.commonAncestor(value: 1, value2: 2))
print(t.commonAncestor(value: 2, value2: 7))
print(t.commonAncestor(value: 5, value2: 3))
print(t.commonAncestor(value: 5, value2: 8))