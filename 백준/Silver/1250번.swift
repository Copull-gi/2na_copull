import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]
let start = input[2]

var graph: [Int: [Int]] = [:]

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let node = input[0]
    let neighbor = input[1]
    addNeighborList(node, neighbor)
}

dfs(graph, start)
bfs(graph, start)

func addNeighborList(_ node: Int, _ neighbor: Int) {
    let neighborList = graph[node]
    graph[node] = (neighborList ?? []) + [neighbor]
    graph[neighbor] = (graph[neighbor] ?? []) + [node]
}


func dfs(_ graph: [Int: [Int]], _ start: Int) {
    var visitedQueue: [Int] = []
    var needVisitStack: [Int] = [start]
    
    while !needVisitStack.isEmpty {
        let needVisitStackLast: Int = needVisitStack.last ?? 0
        needVisitStack.removeLast()
        
        if !visitedQueue.contains(needVisitStackLast) {
            visitedQueue.append(needVisitStackLast)
            needVisitStack += graph[needVisitStackLast]?.sorted(by: >) ?? []
        }
    }
    print(visitedQueue.map{ String($0) }.joined(separator: " "))
}

func bfs(_ graph: [Int: [Int]], _ start: Int) {
    var visitedQueue: [Int] = []
    var needVisitStack: [Int] = [start]
    
    while !needVisitStack.isEmpty {
        let needVisitStackfirst: Int = needVisitStack.first ?? 0
        needVisitStack.removeFirst()
        
        if !visitedQueue.contains(needVisitStackfirst) {
            visitedQueue.append(needVisitStackfirst)
            needVisitStack += graph[needVisitStackfirst]?.sorted(by: <) ?? []
        }
    }
    print(visitedQueue.map{ String($0) }.joined(separator: " "))
}
