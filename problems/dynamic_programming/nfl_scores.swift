import Foundation

func countScores(_ score: Int) -> Int {
	var scoreRef: [[[Int]]] = [[[Int]]]()
	print(scoreRef)
	let legalScores = [2,3,7]
	scoreRef.append([[Int]]())
	for s in 1...score {
		var correctValues = [[Int]]()
		for i in 0..<legalScores.count {
			if s == legalScores[i] {
				print("appending s: \(s)")
				var correctValue = Array(repeating: 0, count: 3)
				correctValue[i] = 1
				correctValues.append(correctValue)
			}
			if s > legalScores[i] {
				let x = s - legalScores[i]
				print("x \(x) ref \(scoreRef[x])")
				for ref in scoreRef[x] {
					var correctValue = ref
					print("s \(s) ref \(ref) i \(i)")
					correctValue[i] += 1 
					if !correctValues.contains(correctValue) {
						correctValues.append(correctValue)
					}
				}
			}
		}
		scoreRef.append(correctValues)
	}
	print(scoreRef[score])
	return scoreRef[score].count
}

print(countScores(12))
