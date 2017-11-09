//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
/*
An Arithmetic Progression is defined as one in which there is a constant difference between the consecutive terms of a given series of numbers. You are provided with consecutive elements of an Arithmetic Progression. There is however one hitch: Exactly one term from the original series is missing from the set of numbers which have been given to you. The rest of the given series is the same as the original AP. Find the missing term.

You have to write the function findMissing (list) , list will always be atleast 3 numbers. The missing term will never be the first or last one.

Example :

findMissing([1,3,5,9,11]) == 7
PS: This is a sample question of the facebook engeneer challange on interviewstreet. I found it quite fun to solve on paper using math , derive the algo that way. Have fun!
 
 class SolutionTest: XCTestCase {
 static var allTests = [
 ("Test Example", testExample),
 ]
 
 func testExample() {
 XCTAssertEqual(find_missing(l: [1, 2, 3, 4, 6, 7, 8, 9]), 5)
 XCTAssertEqual(find_missing(l: [-1, -7, -10, -13, -16, -19, -22, -25, -28]), -4)
 XCTAssertEqual(find_missing(l: [-1, 2, 5, 8, 11, 14, 17, 20, 26]), 23)
 XCTAssertEqual(find_missing(l: [1, -2, -5, -8, -14, -17, -20, -23, -26]), -11)
 XCTAssertEqual(find_missing(l: [12, 4, -4, -12, -20, -28, -44, -52, -60]), -36)
 XCTAssertEqual(find_missing(l: [-13, 5, 14, 23, 32, 41, 50, 59, 68]), -4)
 }
 }
 */

//func find_missing(l:[Int]) -> Int {
//    if(l.count <= 2){
//        return 0
//    }
//    let f1 = l[0]
//    let f2 = l[1]
//    let r1 = f2 - f1
//    let f3 = l[2]
//    if l.count == 3 {
//        let fck1 = f3 - f2
//        let result = max(abs(r1), abs(fck1)) == abs(r1) ? r1 : fck1
//        return result
//    }
//    let f4 = l[3]
//    let r2 = f4 - f3
//    let difNo = min(abs(r1), abs(r2)) == abs(r1) ? r1 : r2
//
//    for (index, value) in l.enumerated() {
//        if (index + 1) > l.count { break }
//        let nextValue = l[(index + 1)]
//        if (value + difNo) == nextValue {
//            continue
//        } else {
//            return (value + difNo)
//        }
//    }
//    return 0
//}


//clever solution
/*
 Nếu một dãy số liên tiếp (hoặc cách đều) chẳng hạn
 1,2,3,4,...hoặc 1,3,5,7,...hoặc 13,16,19,22,...
 thì tính tổng như sau :
 Lấy số đầu tiên cộng số cuối cùng,nhân với số số hạng,cuối cùng chia đôi.Ví dụ :
 7+8+9+...+45 = (7+45)*39/2 = 1014.
 */
func find_missing(l:[Int]) -> Int {
    let sum = l.reduce(0, +)
    return (l[0] + l[l.count-1]) * (l.count + 1) / 2 - sum
}

//find_missing(l: [-13, -4])
find_missing(l: [1,2,4])
//find_missing(l: [-1, -7, -10, -13, -16, -19, -22, -25, -28])
//find_missing(l: [1, 2, 3, 4, 6, 7, 8, 9])
//find_missing(l: [-1, 2, 5, 8, 11, 14, 17, 20, 26])
//find_missing(l: [1, -2, -5, -8, -14, -17, -20, -23, -26])
//find_missing(l: [12, 4, -4, -12, -20, -28, -44, -52, -60])
//find_missing(l: [-13, 5, 14, 23, 32, 41, 50, 59, 68])

