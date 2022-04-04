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
class Solution {
    func swapNodes(_ head: ListNode?, _ k: Int) -> ListNode? {
        var currentNode = head
        var listLength = 0
        var frontNode: ListNode? = nil
        var endNode: ListNode? = nil
        while currentNode != nil{
            listLength += 1
            if endNode != nil{endNode = endNode?.next}
            
            if listLength == k{
                frontNode = currentNode
                endNode = head
            }
            currentNode = currentNode?.next
        }
        guard let frontVal = frontNode?.val, let endVal = endNode?.val else{return head}
        frontNode?.val = endVal
        endNode?.val = frontVal
        return head
    }
}