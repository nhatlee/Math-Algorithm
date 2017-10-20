//: Playground - noun: a place where people can play

import UIKit

func getDivisors(_ x:Int) -> [Int]{
    let sqr = sqrt(Double(x))
    var list = [Int]()
    for i in 1..<Int(sqr)+1 {
        if x % i == 0 {
            list.append(i)
            if i != (x/i) {
                list.append((x/i))
            }
        }
    }
    return list
}

getDivisors(42)
