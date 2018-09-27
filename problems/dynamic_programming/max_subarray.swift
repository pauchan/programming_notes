import Foundation

func maxSubarray(_ array: [Int]) -> Int {
	var max = array[0]
	var currentSum = array[0]
	for i in 1..<array.count {
		if array[i] > max {
			max = array[i]
			currentSum = array[i]
		}
		currentSum += array[i]

		if currentSum > max {
			max = currentSum
		}
	}
	return max
}

print(maxSubarray([100,-50,100,100]))
print(maxSubarray([904,40,523,12,-335,-385,-124,481,-31]))