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

  func addNode(_ value: Int) {
    let node = Node(value: value)
    addNode(node, toNode: root)
  }

  private func addNode(_ node: Node toNode: Node) {
    if node.value == toNode.value {
      return
    } else if node.value > toNode.value { // add to right side
      if toNode.right == nil {
        toNode.right = node
      } else {
        addNode(node, toNode: toNode.right)
      }
    } else { // add to left side
      if toNode.left == nil {
        toNode.left = node
      } else {
        addNode(node, toNode: toNode.left)
      }
    }
  }

  func traverseDepth() {

  }

}
