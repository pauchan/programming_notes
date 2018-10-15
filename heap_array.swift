import Foundation

class Heap {

  var memory: [Int] = []
  
  func add(_ value: Int) {
    memory.append(value)
    let index = memory.count - 1
    let pIndex = parentIndex(index)
    swap(child: memory.count - 1, parent: pIndex)
  }

  func swap(child: Int, parent: Int) {
    // print("child: \(child) parent: \(parent)")
    if parent >= 0 && memory[child] > memory[parent] {
      let temp = memory[child]
      memory[child] = memory[parent]
      memory[parent] = temp
      swap(child: parent, parent: parentIndex(parent))
    }
  }

  func extract() -> Int {
    let rValue = memory[0]
    heapify(index: 0)
    return rValue
  }

  func heapify(index: Int) {
    let l = leftIndex(index)
    let r = rightIndex(index)
    if r < memory.count
  }

  func parentIndex(_ index: Int) -> Int {
    return Int(ceil(Double(index / 2))) - 1
  }




}

let h = Heap()
h.add(3)
h.add(5)
h.add(12)
h.add(1)
h.add(11)
h.add(32)
h.add(15)
print(h.memory)

