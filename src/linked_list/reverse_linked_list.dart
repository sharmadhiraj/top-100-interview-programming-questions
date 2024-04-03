import '../common/list_node.dart';

void main() {
  final ListNode original =
      ListNode.createLinkedList([1, 5, 7, 9, 4, 67, 34, 56, 41])!;
  print(original);
  final ListNode reversed = reverseLinkedList(original)!;
  print(reversed);
}

ListNode? reverseLinkedList(ListNode head) {
  ListNode? prev = null;
  ListNode? current = head;

  while (current != null) {
    ListNode? nextNode = current.next;
    current.next = prev;
    prev = current;
    current = nextNode;
  }

  return prev;
}
