import Foundation

class Graph {

	var adjencyMatrix: [Int: [(Int, Int)]] = [:]

	init() {}

	func addEdge(_ v1: Int, _ v2: Int, value: Int) {
		if adjencyMatrix[v1] != nil {
			adjencyMatrix[v1]!.append((v2, value))
		} else {
			adjencyMatrix[v1] = [(v2, value)]
		}

		if adjencyMatrix[v2] != nil {
			adjencyMatrix[v2]!.append((v1, value))
		} else {
			adjencyMatrix[v2] = [(v1, value)]
		}
	}	

	func traverse(startingNode: Int) {
		var visited: [Int] = []
		var queue: [(Int, Int)] = [(startingNode, 0)]
		var currentKey = startingNode
		while queue.count != 0 {
			let (currentKey, _) = queue[0]
			visited.append(currentKey)
			queue.remove(at: 0)
			print(currentKey)
			for (el, cost) in adjencyMatrix[currentKey]! {
				if !visited.contains(el) && !queue.map( { (node, cost) in return node }).contains(el) {
					queue.insert((el, cost), at: 0)
					print("current: \(currentKey) queue: \(queue) visited: \(visited)")
				}
			}
		}
	}
}

var g = Graph()
g.addEdge(1,3, value: 2)
g.addEdge(4,3, value: 2)
g.addEdge(2,3, value: 2)
g.addEdge(1,5, value: 2)
g.addEdge(2,5, value: 2)
g.addEdge(5,3, value: 2)

g.traverse(startingNode: 1)

