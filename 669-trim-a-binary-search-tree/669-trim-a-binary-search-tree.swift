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
    func trimBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> TreeNode? {
        guard let node = root else { return nil }
        if node.val > high{
            return trimBST(node.left, low, high)
        }else if node.val < low{
            return trimBST(node.right, low, high)
        }
        node.left = trimBST(node.left, low, high)
        node.right = trimBST(node.right, low, high)
        return node
    }
}