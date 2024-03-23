/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */
class Solution {
    public void reorderList(ListNode head) {
       // Find the middle node of the list.
        ListNode slow = head;
        ListNode fast = head.next;
        while (fast != null && fast.next != null) {
            slow = slow.next;
            fast = fast.next.next;
        }

        // Reverse the second half of the list.
        ListNode secondHalf = slow.next;
        slow.next = null;
        ListNode prev = null;
        while (secondHalf != null) {
            ListNode next = secondHalf.next;
            secondHalf.next = prev;
            prev = secondHalf;
            secondHalf = next;
        }

        // Merge the two halves of the list.
        ListNode mergedHead = head;
        ListNode secondHalfHead = prev;
        while (secondHalfHead != null) {
            ListNode next = mergedHead.next;
            mergedHead.next = secondHalfHead;
            secondHalfHead = secondHalfHead.next;
            mergedHead.next.next = next;
            mergedHead = mergedHead.next.next;
        }  
    }
}