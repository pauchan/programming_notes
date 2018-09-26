import Foundation

class Trie {

  private var root: Node

  init() {
    self.root = Node()
  }

  func add(_ word: String) {
    add(word, root)
  }

  func traverseBreadth() {
    var queue = [root]
    while queue.count != 0 {
      print(queue[0].value)
      queue.append(contentsOf: queue[0].childrens)
      queue.remove(at: 0)
    }
  }

  func traverseDeep() {
    traverseDeep(node: root)
  }

  private func traverseDeep(node: Node) {
    print(node.value)
    for child in node.childrens {
      traverseDeep(node: child)
    }
  }

  private func add(_ word: String, _ toNode: Node) {
    if word.count == 0 { return }
    let firstCharacter = word[word.startIndex]
    if let obj = toNode.childrens.first(where: { $0.value == firstCharacter }) {
      add(String(word[word.index(word.startIndex, offsetBy: 1)...]), obj)
    } else {
      let children = Node(value: firstCharacter)
      toNode.childrens.append(children)
      add(String(word[word.index(word.startIndex, offsetBy: 1)...]), children)
    }
  }
}

class Node {
  var value: Character?
  var childrens: [Node]

  init(value: Character? = nil, childrens: [Node] = [Node]()) {
    self.value = value
    self.childrens = childrens
  }
}


var trie = Trie()
trie.add("test")
trie.add("traverse")
trie.add("pizza")


trie.traverseDeep()
trie.traverseBreadth()

