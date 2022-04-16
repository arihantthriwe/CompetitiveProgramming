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
class Solution {
    func convertBST(_ root: TreeNode?) -> TreeNode? {
        var currSum = 0
        func helper(_ root: TreeNode?){
            guard let node = root else{ return }
            if let x = node.right{
                helper(x)
            }
            currSum += node.val
            node.val = currSum
            if let y = node.left{
                helper(node.left)
            }
        }
        helper(root)
        return root
    }
}