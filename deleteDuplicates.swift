import Foundation

func deleteDuplicates(array: [Int]) -> [Int] {
  var counter = 0
  var a = array
  while counter < a.count - 1 {
    if a[counter] == a[counter+1] {
      a.remove(at: counter+1)
    } else {
      counter += 1
    }
  }
  return a
}

func deleteDuplicates2(array: [Int]) -> [Int] {
  var indexToWrite: Int = 0
  var a: [Int] = array
  if array.count < 2 { return array }
  for i in 0...array.count-2 {
    a[indexToWrite] = a[i]
    if a[i] != a[i+1] {
      indexToWrite += 1
    }
  }
  a[indexToWrite] = a[array.count-1]
  return Array(a[0...indexToWrite])
}

print(deleteDuplicates2(array: [1,2,2,3,4,4,4,8,8]))
print(deleteDuplicates2(array: [1,2,2,3,4,4,4,8]))
print(deleteDuplicates2(array: [1]))
print(deleteDuplicates2(array: []))
print(deleteDuplicates2(array: [1,1]))
