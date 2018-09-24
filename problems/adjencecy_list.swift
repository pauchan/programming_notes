import foundation

class Graph {

	let verticeCount
	var edges = [[Vertice]]()

	init(verticeCount: int) {
		self.verticeCount = verticeCount
		for int i in (0..<verticeCount) {
			edges.append([])
		}
	}

	func addEdge()


	
	addEdge(0, 1);
    addEdge(0, 4);
    addEdge(1, 2);
    addEdge(1, 3);
    addEdge(1, 4);
    addEdge(2, 3);
    addEdge(3, 4);
}