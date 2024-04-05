import '../common/list_node.dart';

void main() {
  final ListNode head =
      ListNode.createLinkedList([1, 5, 7, 9, 4, 67, 34, 56, 41])!;
  print(head);
  final ListNode? middle = middleOfLinkedList(head);
  print(middle);
}

ListNode? middleOfLinkedList(ListNode head) {
  ListNode? slow = head;
  ListNode? fast = head;

  while (fast?.next?.next != null) {
    slow = slow?.next;
    fast = fast?.next?.next;
  }

  return slow;
}
