You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 0 -> 8
Explanation: 342 + 465 = 807.

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var v1 = l1?.val ?? 0
        var v2 = l2?.val ?? 0
        var modulo = ((v1 + v2) % 10)
        var head = ListNode(modulo) 
        var overflow = (v1 + v2) / 10
        var first = l1?.next
        var second = l2?.next
        var current = head
        while first != nil || second != nil || overflow != 0 { 
            var v1 = first?.val ?? 0
            var v2 = second?.val ?? 0
            modulo = (v1 + v2 + overflow) % 10
            let x = ListNode(modulo)
            overflow = (v1 + v2 + overflow) / 10
            current.next = x
            current = x
            first = first?.next
            second = second?.next
        }
        return head
    }
}