import Foundation

class Graph {
  private var adjencyList: [[Node]] = [[Node]]()

  func addEdge(value: Int, value2: Int) {
    var first = adjencyList.first(where: {
      $0.label == value
    })

    var second = adjencyList.first(where: {
      $0.label == value2
    })

    if first != nil && second != nil {
    // we have 

    } else {
      
    }
  }

  func traverseDepth() {

  }

}

class Node {
  label: Int
  visited: Bool

  init(label: Int) {
    self.label = label
    visited = false
  }

}
