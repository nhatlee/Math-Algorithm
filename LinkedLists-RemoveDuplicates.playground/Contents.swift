//: Playground - noun: a place where people can play
/*
 Linked Lists - Remove Duplicates
 
 Write a RemoveDuplicates() function which takes a list sorted in increasing order and deletes any duplicate nodes from the list. Ideally, the list should only be traversed once. The head of the resulting list should be returned.
 
 var list = 1 -> 2 -> 3 -> 3 -> 4 -> 4 -> 5 -> null
 removeDuplicates(list) === 1 -> 2 -> 3 -> 4 -> 5 -> null
 If the passed in list is null/None/nil, simply return null.
 
 Note: Your solution is expected to work on long lists. Recursive solutions may fail due to stack size limitations.
 
 The push() and buildOneTwoThree() functions need not be redefined.
 
 Related Kata in order of expected completion (increasing difficulty):
 Linked Lists - Push & BuildOneTwoThree
 Linked Lists - Length & Count
 Linked Lists - Get Nth Node
 Linked Lists - Insert Nth Node
 Linked Lists - Sorted Insert
 Linked Lists - Insert Sort
 Linked Lists - Append
 Linked Lists - Remove Duplicates
 Linked Lists - Move Node
 Linked Lists - Move Node In-place
 Linked Lists - Alternating Split
 Linked Lists - Front Back Split
 Linked Lists - Shuffle Merge
 Linked Lists - Sorted Merge
 Linked Lists - Merge Sort
 Linked Lists - Sorted Intersect
 Linked Lists - Iterative Reverse
 Linked Lists - Recursive Reverse
 
 Inspired by Stanford Professor Nick Parlante's excellent Linked List teachings.
 
 import XCTest
 // XCTest Spec Example:
 // TODO: replace with your own tests (TDD), these are just how-to examples to get you started
 
 class SolutionTest: XCTestCase {
 static var allTests = [
 ("testRemoveDuplicates", testRemoveDuplicates),
 ("testRemoveDuplicatesWithNilList", testRemoveDuplicatesWithNilList),
 ("testRemoveDuplicatesWithoutDuplicates", testRemoveDuplicatesWithoutDuplicates),
 ("testRemoveDuplicatesWithMultipleDuplicateSetsInMiddle", testRemoveDuplicatesWithMultipleDuplicateSetsInMiddle),
 ("testRemoveDuplicatesWithDuplicatesAtEnd", testRemoveDuplicatesWithDuplicatesAtEnd),
 
 ]
 
 func testRemoveDuplicates() {
 var first:Node? = buildListFromArray([1, 1, 1, 2, 3])
 first = removeDuplicates(head: first)
 XCTAssertTrue(linkedListsEqual(first: first, second: buildListFromArray([1, 2, 3])))
 }
 
 func testRemoveDuplicatesWithNilList() {
 var first:Node? = nil
 first = removeDuplicates(head: first)
 XCTAssertTrue(linkedListsEqual(first: first, second: nil))
 }
 
 func testRemoveDuplicatesWithoutDuplicates() {
 var first:Node? = buildOneTwoThree()
 first = removeDuplicates(head: first)
 XCTAssertTrue(linkedListsEqual(first: first, second: buildOneTwoThree()))
 }
 
 func testRemoveDuplicatesWithMultipleDuplicateSetsInMiddle() {
 var first:Node? = buildListFromArray([1, 2, 3, 3, 3, 4, 5, 5, 5, 6, 7])
 first = removeDuplicates(head: first)
 XCTAssertTrue(linkedListsEqual(first: first, second: buildListFromArray([1, 2, 3, 4, 5, 6, 7])))
 }
 
 func testRemoveDuplicatesWithDuplicatesAtEnd() {
 var first:Node? = buildListFromArray([1, 2, 3, 4, 5, 5, 5, 5, 5])
 first = removeDuplicates(head: first)
 XCTAssertTrue(linkedListsEqual(first: first, second: buildListFromArray([1, 2, 3, 4, 5])))
 }
 }
 
 XCTMain([
 testCase(SolutionTest.allTests)
 ])
 */

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

func removeDuplicates(head: Node?) -> Node? {
    guard var node = head else { return nil }
    while let next = node.next {
        if node.data == next.data {
            node.next = next.next
        } else {
            node = next
        }
    }
    return head
}









func printA(a: Int) {
    print("defer \(a)")
}

func perform() {
    var a = 5
    let b = printA(a: a)
    defer {print(b)}
    a = 10
    print("value of a before deferred function call \(a)")
}
perform()

//stack of prefer
func main(){
    let name = "nhat"
    print("original:\(name)")
    print("reversed: ")
    for v in name.reversed() {
        defer {print("\(v)")}
    }
}
main()

