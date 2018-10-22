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

	func dijkistra(startingVertex: Int) -> [Int: Int] {
		var usedVertices: Set<Int> = []
		var distances: [Int: Int] = [:]
		adjencyMatrix.keys.forEach { distances[$0] = Int.max }
		let allVertices = Set(adjencyMatrix.keys)
		distances[startingVertex] = 0
		while usedVertices != allVertices {
			guard let minimum = allVertices.subtracting(usedVertices).min() else { continue }
			usedVertices.insert(minimum)
			for (v,dist) in adjencyMatrix[minimum]! {
				if (distances[v]! > distances[minimum]! + dist) {
					distances[v]! = distances[minimum]! + dist
				}
			}
		}
		print(distances)
		return distances
	}
}

var g = Graph()
g.addEdge(0,1, value: 4)
g.addEdge(0,7, value: 8)
g.addEdge(1,2, value: 8)
g.addEdge(1,7, value: 11)
g.addEdge(2,3, value: 7)
g.addEdge(2,8, value: 2)
g.addEdge(2,5, value: 4)
g.addEdge(3,4, value: 9)
g.addEdge(3,5, value: 14)
g.addEdge(4,5, value: 10)
g.addEdge(5,6, value: 2)
g.addEdge(6,7, value: 1)
g.addEdge(6,8, value: 6)
g.addEdge(7,8, value: 7)



g.dijkistra(startingVertex: 0)
