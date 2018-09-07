/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

// note that this function returns an array

class Solution {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var table: [Int] = []
        guard let r = root else { return [] }
        if r.val != nil {
            table.append(r.val)
        }
        table.append(contentsOf: preorderTraversal(r.left))
        table.append(contentsOf: preorderTraversal(r.right))
        return table
    }
}