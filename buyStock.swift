import Foundation

func buyStock(array: [Int]) -> Int {
  var maxValue = 0
  for i in 0...array.count - 1  {
    for j in i...array.count - 1 {
      var sum = array[j] - array[i]
      if sum > maxValue {
        maxValue = sum
      }
    }
  }
  return maxValue
}


print(buyStock(array: [310,315,275,295,260,270,290,230,255,250]))
