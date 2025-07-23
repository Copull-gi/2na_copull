import Foundation

let t = Int(readLine()!)!

for i in 0..<t {
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    
    let result = howManyPeopleLive(k, n)
    print(result)
}

func howManyPeopleLive(_ a: Int, _ b: Int) -> Int {
    var result: Int = 0
    
    if a == 0 {
        return b
    }
    
    for b in 1...b {
        result += howManyPeopleLive(a - 1, b)
    }
    
    return result
}

