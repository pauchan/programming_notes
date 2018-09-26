## Dynamic programming
## sum of all subarrays
## brute force time is 2^n, this solution is n^2.
## Can I do better?

## Memo: Ive messed up a lot in the array indices

import Foundation

func subarraySum(_ array: [Int]) -> Int {
	
	var memory = [Int]() // first is index, second is length
	var sum = 0
	for i in 0..<array.count {
		memory.append(array[i])
		sum += array[i]
	}

	for len in 2...array.count {
		for i in 0...array.count - len {
			sum += memory[i] + array[i+len-1]
			memory[i] = memory[i] + array[i+len-1]
			print(sum)
		}
	}
	return sum
}

print(subarraySum([1,2,3]))