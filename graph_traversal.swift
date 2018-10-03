import Foundation

class Graph {
  var adjencyList: [Int : [Int]] = [Int : [Int]]()
  var nodes: Set<Node> = Set()

  func addEdge(_ label: Int, _ label2: Int) {
    let node1 = Node(label: label)
    let node2 = Node(label: label2)
    nodes.insert(node1)
    nodes.insert(node2)

    if adjencyList[label] != nil {
      adjencyList[label]!.append(label2)
    } else {
      adjencyList[label] = [label2]
    }
    if adjencyList[label2] != nil {
      adjencyList[label2]!.append(label)
    } else {
      adjencyList[label2] = [label]
    }
  }

  func traverseDepth() {
    var node = nodes.first!
    traverseDepth(node: node)
  }

  private func traverseDepth(node: Node) {
  if !node.visited {
    node.visited = true
    print("visited: \(node.label)")
  }
    for label in adjencyList[node.label]! {
      let n = nodes.first(where: { $0.label == label })!
      if !n.visited {
        traverseDepth(node: n)
      }
    }
  }
}

class Node: Hashable {
  let label: Int
  var visited: Bool

  init(label: Int) {
    self.label = label
    self.visited = false
  }

  static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs.label == rhs.label
        }

        func hash(into hasher: inout Hasher) {
          hasher.combine(label)
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
