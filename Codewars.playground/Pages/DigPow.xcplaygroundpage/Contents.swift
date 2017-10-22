//: [Previous](@previous)

import Foundation

//: [Next](@next)


/*
 dig_pow(89, 1) should return 1 since 8¹ + 9² = 89 = 89 * 1
 dig_pow(92, 1) should return -1 since there is no k such as 9¹ + 2² equals 92 * k
 dig_pow(695, 2) should return 2 since 6² + 9³ + 5⁴= 1390 = 695 * 2
 dig_pow(46288, 3) should return 51 since 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51
 */
 
//MARK: =====Normarl
func digPow(for number: Int, using power: Int) -> Int {
    var _power = power
    let sum = String(number).characters.flatMap{ Int(String($0)) }.map{ value in
        let result = value ^^ _power
        _power += 1
        return result
    }.reduce(0, +)
    return sum % number == 0 ? sum/number : -1
}
print(digPow(for: 46288, using: 3))

//MARK: =====better solution
//func digPow(for number: Int, using power: Int) -> Int {
//    let sum = String(number).characters.enumerated().reduce(0) {
//        let number = Int(String($1.1))!
//        return $0 + Int(pow(Double(number), Double(power + $1.0)))
//    }
//    return sum % number == 0 ? sum / number : -1
//}
//print(digPow(for: 46288, using: 3))

