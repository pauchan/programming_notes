import Foundation

class Heap {

  var memory: [Int] = []
  
  func add(_ value: Int) {
    memory.append(value)
    let index = memory.count - 1
    let pIndex = parentIndex(index)
    swap(memory: memory, child: memory.count - 1, parent: pIndex)
  }

  func swap(memory: [Int], child: Int, parent: Int) {
    if memory[child] > memory[parent] {
      let temp = memory[child]
      memory[child] = memory[parent]
      memory[parent] = temp
      swap(memory: memory, child: parent, parent: parentIndex(parent))
    }
  }

  func parentIndex(_ index: Int) -> Int {
    return ceil((index / 2) as Int) - 1
  }
}

let h = Heap()
h.add(3)
h.add(5)
h.add(12)
h.add(1)
h.add(11)
print(h.memory)

