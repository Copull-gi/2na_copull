import Foundation

let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }

var p: [Int] = []
var result: Int = 0

for i in 0..<N {
    p.append(input[i])
}

p.sort()

for i in 0..<p.count {
    result += p[0...i].reduce(0, +)
}

print(result)
