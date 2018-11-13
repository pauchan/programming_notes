import Foundation

func countOnes(_ value: Int) -> Int {
  var counter = 0
  var value = value
  while value != 0 {
    counter += value % 2
    value = value / 2
  }
  return counter
}

print(countOnes(5)) // 101 2
print(countOnes(127)) // 111111 6
print(countOnes(1)) // 1
