//: [Previous](@previous)

import Foundation
func primeFactors(of n: Int) -> [(Int, Int)] {
    var result = [(Int, Int)]()
    var n1 = abs(n)
    var z = 2
    while z * z <= n1 {
        if n1 % z == 0 {
            n1 = n1/z
            if !result.contains(where: {$0 == (z, n)}){
                result.append((z, n))
            }
        }else {
            z += 1
        }
    }
    if n1 > 1 {
        if !result.contains(where: {$0 == (n1, n)}){
            result.append((n1, n))
        }
    }
    return result
}

func sumOfDivided(_ l: [Int]) -> [(Int, Int)] {
    var list = [(Int, Int)]()
    for obj in l {
        let pfactors = primeFactors(of: obj)
        for f in pfactors {
            if list.contains(where: {$0.0 == f.0}){
                let index = list.index(where: {$0.0 == f.0})
                let value = list[index!]
                let sum = value.1 + f.1
                list.remove(at: index!)
                list.append((f.0, sum))
            } else {
                list.append(f)
            }
        }
    }
    return list.sorted(by: {$0.0 < $1.0})
}

//print(sumOfDivided([15,21,24,30,45]))
print(sumOfDivided([15, 30, -45]))

//: [Next](@next)
