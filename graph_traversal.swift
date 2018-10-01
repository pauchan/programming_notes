import Foundation

class Graph {
  private var adjencyList: [Int : [Node]] = [Int : [Node]]()

  func addEdge(_ label: Int, _ label2: Int) {
    let node1 = Node(label: label)
    let node2 = Node(label: label2)

    var firstN = adjencyList[label]
    var secondN = adjencyList[label2]

    if firstN != nil {
      firstN!.append(node2)
      print("appended \(node2.label)")  
    } else {
      adjencyList[label] = [node2]
      print("set \(node2.label)")  
    }
    if secondN != nil {
      secondN!.append(node1)
      print("appended \(node1.label)")  
    } else {
      adjencyList[label2] = [node1]
      print("set \(node1.label)")  
    }
  }

  func traverseDepth() {
    var (anyVertex, _) = adjencyList.randomElement()!
    traverseDepth(node: adjencyList[anyVertex]!.first!)
  }

  private func traverseDepth(node: Node) {
  print("entering \(node.label)")
  var neighbours = adjencyList[node.label]
  if !node.visited {
    node.visited = true
    print("visited: \(node.label)")
  }
    for n in neighbours! {
    print("looping \(n.label)")
      if !n.visited {
        traverseDepth(node: n)
      }
    }
  }
}

class Node: Equatable {
  let label: Int
  var visited: Bool

  init(label: Int) {
    self.label = label
    self.visited = false
  }

  static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs.label == rhs.label
        }
}


var g = Graph()
g.addEdge(1,3)
g.addEdge(3,4)

g.traverseDepth()