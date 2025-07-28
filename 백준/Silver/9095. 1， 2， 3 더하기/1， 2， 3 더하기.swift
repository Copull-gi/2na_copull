import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let n = Int(readLine()!)!
    print(countHowToAdd(n))
}

func countHowToAdd(_ n: Int) -> Int {
    var count = 0
    
    if n == 0 { return 1 }
    if n < 0  { return 0 }

    count = countHowToAdd(n-1) + countHowToAdd(n-2) + countHowToAdd(n-3)
    
    return count
}
