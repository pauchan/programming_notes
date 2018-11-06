import Foundation

func advanceArray(array: [Int]) -> Bool {
  var possibleIndexes = Array(repeating: false, count: array.count)
  possibleIndexes[0] = true
  for i in 0...possibleIndexes.count-1 {
    if possibleIndexes[i] && array[i] > 0 {
      for l in 1...array[i] {
        if i+l < array.count {
          possibleIndexes[i+l] = true
        }
      }
    }
  }
  return possibleIndexes[possibleIndexes.count-1]
}

func advanceArray2(array: [Int]) -> Bool {
  var furthestAdvanceIndex = array[0]
  for i in 1...array.count - 1 {
    print(furthestAdvanceIndex)
    let newIndex = array[i] + i
    if furthestAdvanceIndex <= newIndex {
      return false
    } else {
      furthestAdvanceIndex = newIndex
      if furthestAdvanceIndex >= array.count - 1 { return true }
    }
  }
  return true
}


print(advanceArray2(array: [3,3,1,0,2,0,1]))
print(advanceArray2(array: [3,2,0,0,2,0,1]))

