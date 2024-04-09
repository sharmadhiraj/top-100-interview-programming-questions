import '../common/list_node.dart';

void main() {
  final ListNode head =
      ListNode.createLinkedList([1, 5, 7, 9, 4, 67, 34, 56, 41])!;
  print(getThirdLastNode(head));
}

ListNode? getThirdLastNode(ListNode? head) {
  ListNode? fast = head?.next?.next;
  if (fast == null) {
    return null;
  }
  ListNode? slow = head;
  while (fast?.next != null) {
    fast = fast?.next;
    slow = slow?.next;
  }
  return slow;
}
