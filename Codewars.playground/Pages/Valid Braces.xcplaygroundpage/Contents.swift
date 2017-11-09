//: [Previous](@previous)

import Foundation
/*
 Write a function that takes a string of braces, and determines if the order of the braces is valid. It should return true if the string is valid, and false if it's invalid.
 
 This Kata is similar to the Valid Parentheses Kata, but introduces new characters: brackets [], and curly braces {}. Thanks to @arnedag for the idea!
 
 All input strings will be nonempty, and will only consist of parentheses, brackets and curly braces: ()[]{}.
 
 What is considered Valid?
 
 A string of braces is considered valid if all braces are matched with the correct brace.
 
 Examples
 
 "(){}[]"   =>  True
 "([{}])"   =>  True
 "(}"       =>  False
 "[(])"     =>  False
 "[({})](]" =>  False
 
 func testNonNested() {
 XCTAssertTrue(validBraces("()"))
 XCTAssertTrue(validBraces("[]"))
 XCTAssertTrue(validBraces("{}"))
 XCTAssertTrue(validBraces("(){}[]"))
 }
 
 func testNested() {
 XCTAssertTrue(validBraces("([{}])"))
 XCTAssertFalse(validBraces("(}"))
 XCTAssertFalse(validBraces("[(])"))
 XCTAssertTrue(validBraces("({})[({})]"))
 XCTAssertFalse(validBraces("(})"))
 XCTAssertTrue(validBraces("(({{[[]]}}))"))
 XCTAssertTrue(validBraces("{}({})[]"))
 XCTAssertFalse(validBraces(")(}{]["))
 XCTAssertFalse(validBraces("())({}}{()][]["))
 XCTAssertFalse(validBraces("(((({{"))
 XCTAssertFalse(validBraces("}}]]))}])"))
 }
 */

func opposite(of char: String) -> String {
    switch char {
    case "{":
        return "}"
    case "(":
        return ")"
    case "[":
        return "]"
    default:
        return "unknow"
    }
}

func validBraces(_ string:String) -> Bool {
    if string.characters.count % 2 != 0 {
        return false
    }
    for (index, value) in string.characters.enumerated() {
        let nextIdx = index + 1
        for (nextIdx, obj) in string.characters.enumerated() {
            let op = opposite(of: String(obj))
            if (op)
        }
    }
    return true
}
//{[}}
validBraces("(){}[]")
validBraces("[[{}]]")
https://www.codewars.com/kata/5277c8a221e209d3f6000b56/train/swift

//: [Next](@next)
