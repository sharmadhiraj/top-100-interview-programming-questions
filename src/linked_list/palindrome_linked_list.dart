import '../common/list_node.dart';

void main() {
  final ListNode head1 = ListNode.createLinkedList([1, 2, 3, 2, 1])!;
  final ListNode head2 = ListNode.createLinkedList([1, 2, 3, 4, 5])!;

  print(isPalindrome(head1)); // true
  print(isPalindrome(head2)); // false
}

bool isPalindrome(ListNode? head) {
  if (head == null || head.next == null) {
    return true; // Empty or single-node list is considered a palindrome
  }

  ListNode? slow = head;
  ListNode? fast = head;

  // Find the middle of the list and reverse the first half
  ListNode? prev = null;
  while (fast != null && fast.next != null) {
    fast = fast.next!.next;
    ListNode? temp = slow?.next;
    slow?.next = prev;
    prev = slow;
    slow = temp!;
  }

  // If the number of nodes is odd, move slow to the next node
  if (fast != null) {
    slow = slow?.next!;
  }

  // Compare the first half with the second half
  while (prev != null && slow != null) {
    if (prev.val != slow.val) {
      return false;
    }
    prev = prev.next;
    slow = slow.next;
  }

  return true;
}
