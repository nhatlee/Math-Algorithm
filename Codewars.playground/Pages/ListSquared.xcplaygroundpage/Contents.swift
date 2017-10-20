//: [Previous](@previous)


//: Codewars challenge

//: =========================

//: ## Read the require of this challenge as below

//: ### And please view and comment with my solution

import UIKit

/*
 Divisors of 42 are : 1, 2, 3, 6, 7, 14, 21, 42. These divisors squared are: 1, 4, 9, 36, 49, 196, 441, 1764. The sum of the squared divisors is 2500 which is 50 * 50, a square!
 
 Given two integers m, n (1 <= m <= n) we want to find all integers between m and n whose sum of squared divisors is itself a square. 42 is such a number.
 
 The result will be an array of arrays(in C an array of Pair), each subarray having two elements, first the number whose squared divisors is a square and then the sum of the squared divisors.
 
 #Examples:
 
 list_squared(1, 250) --> [[1, 1], [42, 2500], [246, 84100]]
 list_squared(42, 250) --> [[42, 2500], [246, 84100]]
 */

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

func numberIsSquare(_ x: Int) -> Bool{
    return Int(sqrt(Double(x))) * Int(sqrt(Double(x))) == x
}

func listSquared(_ m: Int, _ n: Int) -> [(Int, Int)] {
    var list = [(Int, Int)]()
    for value in m ... n{
        let sumOfDivisors = getDivisors(value).map{$0 * $0}.reduce(0, +)
        if numberIsSquare(sumOfDivisors){
            list.append((value, sumOfDivisors))
        }
    }
    return list
}
print(listSquared(1, 250))
print(listSquared(42, 250))
