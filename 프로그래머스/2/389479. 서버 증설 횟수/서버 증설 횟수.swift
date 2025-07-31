import Foundation

func solution(_ players:[Int], _ m:Int, _ k:Int) -> Int {
    var count = 0
    var server: [Int] =  Array(repeating: 0, count: players.count)
    
    for i in 0...players.count-1 {        
        if players[i] >= m {
            var expectedServer = players[i]/m
            if server[i] != 0 && expectedServer <= server[i] { continue }
            
            expectedServer = expectedServer - server[i]
            count += expectedServer 
            
            for j in 0..<k {
                if i + j >= server.count { break }
                server[i + j] += expectedServer 
            }
        }
        print(server)
    }

    return count
}
