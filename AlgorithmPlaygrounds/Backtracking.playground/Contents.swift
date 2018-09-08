import Foundation

// generating all possible subsets of n numbers using backrtacking algorithm
// Algrithm Design Manual

func backtrack(vector: [Bool], currentIndex: Int, maxIndex: Int) {
    
    if isSolution(currentIndex: currentIndex, maxIndex: maxIndex) {
        processSolution(vector: vector, currentIndex: currentIndex, maxIndex: maxIndex)
    } else {
        let nextIndex = currentIndex + 1
        let candidates = generateCandidates(vector: vector)
        for candidate in candidates {
            backtrack(vector: candidate, currentIndex: nextIndex, maxIndex: maxIndex)
        }
    }
}

func isSolution(currentIndex: Int, maxIndex: Int) -> Bool {
    return currentIndex == maxIndex
}

func processSolution(vector: [Bool], currentIndex: Int, maxIndex: Int) {
    for (ix, element) in vector.enumerated() {
        if element {
            print(ix + 1)
        }
    }
    print("\n")
}

func generateCandidates(vector: [Bool]) -> [[Bool]] {
    let options = [true, false]
    var candidates: [[Bool]] = []
    for option in options {
        let candidate = vector + [option]
        candidates.append(candidate)
    }
    return candidates
}

backtrack(vector: [], currentIndex: 0, maxIndex: 3)
