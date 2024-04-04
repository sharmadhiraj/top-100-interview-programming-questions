import '../common/list_node.dart';

void main() {
  ListNode original =
      ListNode.createLinkedList([1, 5, 7, 9, 4, 67, 34, 56, 41])!;
  print(original);
  original = insertNodeInMiddle(original, ListNode(val: 33));
  print(original);
}

ListNode insertNodeInMiddle(ListNode head, ListNode middle) {
  ListNode? slow = head;
  ListNode? fast = head;

  while (fast?.next?.next != null) {
    slow = slow?.next;
    fast = fast?.next?.next;
  }

  middle.next = slow?.next;
  slow?.next = middle;
  return head;
}
