import Foundation

// Travelling salesman problem
// https://www.geeksforgeeks.org/travelling-salesman-problem-set-1/

struct Vertice: Equatable {
    let index: Int
}

let x: [Int?] = [5, 3, nil, 12]

let s = "piramida"

s[s.index(s.startIndex, offsetBy: 1)]

/*
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


l1 = 

var head = ListNode((l1?.val ?? 0 + l2?.val ?? 0) % 10)

//extension Vertice: Equatable {
//
//    public static func == (lhs: Self, rhs: Self) -> Bool {
//        return lhs.index == rhs.index
//    }
//}

struct Edge {
    let vertices: (Vertice, Vertice)
    let cost: Int
}

extension Edge: Equatable {
    public static func == (lhs: Edge, rhs: Edge) -> Bool {
        let costsEqual = lhs.cost == rhs.cost
        let firstVerticesEqual = lhs.vertices.0 == rhs.vertices.0 && lhs.vertices.1 == rhs.vertices.1
        let crossVerticesEqual = lhs.vertices.0 == rhs.vertices.1 && lhs.vertices.1 == rhs.vertices.0
        return costsEqual && ( firstVerticesEqual || crossVerticesEqual )
    }
    
}

struct Graph {
    let vertices: [Vertice]
    let edges: [Edge]
}

let v1 = Vertice(index: 1)
let v2 = Vertice(index: 2)
let v3 = Vertice(index: 3)
let v4 = Vertice(index: 4)

let e1 = Edge(vertices: (v1,v2), cost: 10)
let e2 = Edge(vertices: (v1,v3), cost: 15)
let e3 = Edge(vertices: (v1,v4), cost: 20)
let e4 = Edge(vertices: (v2,v3), cost: 35)
let e5 = Edge(vertices: (v2,v4), cost: 25)
let e6 = Edge(vertices: (v3,v4), cost: 30)

let graph = Graph(vertices: [v1,v2,v3,v4], edges: [e1,e2,e3,e4,e5,e6])

let iterations = 100

func random(from: Int = 0, to: Int) -> Int {
    return Int(arc4random_uniform(UInt32(to)))
}

func randomWalk(graph: Graph, iterationsCount: Int) {
    let graphSize = graph.vertices.count
    let startingVertice = graph.vertices[random(to: graphSize)]
    let startingVerticeIndex = graph.vertices.index(of: startingVertice)
    var minCost = Int.max
    var verticesLeft = graph.vertices.remove(at: startingVerticeIndex!)
    
}
*/
