import Foundation

func incrementInteger(array: [Int]) -> [Int] {
  var a = array
  for i in (0...(array.count - 1)).reversed() {
    if a[i] != 0 {
      for j in (0...i).reversed() {
        a[j] =  (a[j] + 1) % 10
        if a[j] != 0 {
          return a
        }
      }
      break
    }
  }
  a.insert(1, at: 0)
  return a
}



print(incrementInteger(array: [1,2,3]))
print(incrementInteger(array: [0,9,0]))
print(incrementInteger(array: [9,9,9]))
