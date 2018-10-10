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

  func traverseDepth() {
    traverseDepth(node: root)
  }

  private func traverseDepth(node: Node) {
    print(node.value)
    if node.left != nil {
      traverseDepth(node: node.left!) 
    }
    if node.right != nil {
      traverseDepth(node: node.right!) 
    }
  }

  func nonrecursiveTraverseDepth() {
    var stack = [root]
    while stack.count != 0 {
      let x = stack[0]
      print(stack[0].value)
      stack.remove(at: 0)
      if x.right != nil {
        stack.insert(x.right!, at: 0)
      }
      if x.left != nil {
        stack.insert(x.left!, at: 0)
      }
    }
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

t.traverseDepth()
t.nonrecursiveTraverseDepth()
