import Foundation

func mergeArrays(arrA: [Int], arrB: [Int]) -> [Int] {
  var indexA: Int = 0
  var indexB: Int = 0
  var output: [Int] = []
  while(indexA <= arrA.count - 1 || indexB <= arrB.count - 1) {
    if indexA > arrA.count - 1 {
      output.append(arrB[indexB])
      indexB += 1
    } else if indexB > arrB.count - 1 {
      output.append(arrA[indexA])
      indexA += 1
    } else {
      if arrA[indexA] > arrB[indexB] {
        output.append(arrB[indexB])
        indexB += 1
      } else {
        output.append(arrA[indexA])
        indexA += 1
      }
    }
  }
  return output
}

print(mergeArrays(arrA: [1,3,4,7], arrB: [2,3,6,8,10]))
