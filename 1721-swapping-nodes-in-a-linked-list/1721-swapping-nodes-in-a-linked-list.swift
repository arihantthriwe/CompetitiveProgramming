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
        var dummyHead = head
        var count = 0
        var length = 0
        while dummyHead != nil{
            count += 1
            dummyHead = dummyHead?.next
        }
        dummyHead = head
        length = count
        count = 0
        while dummyHead != nil{
            count += 1
            if(count == k){
                break
            }
            dummyHead = dummyHead?.next
        }
        var firstLink = dummyHead
        dummyHead = head
        count = 0
        while dummyHead != nil{
            count += 1
            if(count == (length - k + 1)){
                break
            }
            dummyHead = dummyHead?.next
        }
        var lastLink = dummyHead
        dummyHead = head
        var copy = lastLink?.val ?? 0
        lastLink?.val = firstLink?.val ?? 0
        firstLink?.val = copy
        return dummyHead
    }
}