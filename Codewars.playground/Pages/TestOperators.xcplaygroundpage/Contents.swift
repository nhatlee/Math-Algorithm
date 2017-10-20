
import Foundation

var str = "Hello, playground"

//: [ListSquared](@next)
//START here



//XOR
print(3&1) //= 1 => le & 1 = 1
print(4&1)//= 0 => chan & 1 = 0
//We not use dictionary for solved this solution
//We use XOR
func find(_ a: [Int]) -> Int {
    var res = 0
    for number in a {
        res ^= number
    }
    
    return res
}
//Find uniquere number in the list
find([1, 3, 1, 4, 4])
