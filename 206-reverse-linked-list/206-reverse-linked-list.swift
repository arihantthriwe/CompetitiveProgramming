/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
// public class ListNode{
//     public var value: Int
//     public var next: ListNode?
//     public init(){
//         self.val = 0
//         self.next = nil
//     }
//     public init(_ val: Int){
//         self.val = val
//         self.next = nil
//     }
//     public init(_ val: Int, _ next: ListNode?){
//         self.val = val
//         self.next = next
//     }
// }
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var headDummy = head
        var previous : ListNode? = nil
        while headDummy != nil{
            let nextX = headDummy?.next
            headDummy?.next = previous
            previous = headDummy
            headDummy = nextX
        }
        return previous
    }
}