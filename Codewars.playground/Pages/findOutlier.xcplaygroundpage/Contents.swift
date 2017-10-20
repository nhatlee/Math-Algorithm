//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
/*
 For example:
 
 [2, 4, 0, 100, 4, 11, 2602, 36]
 
 Should return: 11
 
 [160, 3, 1719, 19, 11, 13, -21]
 
 Should return: 160
 */

//MARK:======= NORMARL solution
//func findOutlier(_ array: [Int]) -> Int {
//    let odd = array.filter{$0 % 2 != 0}
//    return odd.count > 1 ? array.filter{$0 % 2 == 0}[0] : odd[0]
//}

//MARK:======= Better solution
func findOutlier(_ array: [Int]) -> Int {
    print(array[0...2].map{ $0 & 1 }.reduce(0, +))
    return array.first(where: array[0...2].map{ $0 & 1 }.reduce(0, +) > 1 ? { $0 & 1 == 0 } : { $0 & 1 == 1 })!
}

//findOutlier([2, 4, 0, 100, 4, 11, 2602, 36]) //=>[0, 0, 0]
findOutlier([160, 3, 1719, 19, 11, 13, -21]) //=> [0, 1, 1]

