/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */

class BSTIterator {
    private var parents: [TreeNode?] = []
    init(_ root: TreeNode?) {
        var root = root
        while root != nil{
            self.parents.append(root)
            root = root?.left
        }
    }
    
    func next() -> Int {
        var curr = self.parents.removeLast()
        let val = curr!.val
        if(curr?.right != nil){
            curr = curr!.right
            while curr != nil{
                self.parents.append(curr)
                curr = curr?.left
            }
        }
        return val
    }
    
    func hasNext() -> Bool {
        return !self.parents.isEmpty
    }
}

/**
 * Your BSTIterator object will be instantiated and called as such:
 * let obj = BSTIterator(root)
 * let ret_1: Int = obj.next()
 * let ret_2: Bool = obj.hasNext()
 */