import Foundation

class Graph {
  var adjencyList: [Int : [Node]] = [Int : [Node]]()

  func addEdge(_ label: Int, _ label2: Int) {
    let node1 = Node(label: label)
    let node2 = Node(label: label2)

    if adjencyList[label] != nil {
      adjencyList[label]!.append(node2)
    } else {
      adjencyList[label] = [node2]
    }
    if adjencyList[label2] != nil {
      adjencyList[label2]!.append(node1)
    } else {
      adjencyList[label2] = [node1]
    }
  }

  func traverseDepth() {
    var (anyVertex, _) = adjencyList.randomElement()!
    traverseDepth(node: adjencyList[anyVertex]!.first!)
  }

  private func traverseDepth(node: Node) {
  if !node.visited {
    node.visited = true
    print("visited: \(node.label)")
  }
    for (index, _) in adjencyList[node.label]!.enumerated() {
      if !adjencyList[node.label]![index].visited {
        traverseDepth(node: adjencyList[node.label]![index])
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
g.addEdge(4,3)
g.addEdge(2,3)
g.addEdge(1,5)
g.addEdge(2,5)
g.addEdge(5,3)

g.traverseDepth()
