import '../common/list_node.dart';

void main() {
  final ListNode? head = ListNode.createLinkedList(
    [11, 44, 33, 1, 3, 68, 78, 3, 11, 56, 11, 234, 45, 11, 22],
  );
  print(deleteLinkedListNode(head, 11));
}

ListNode? deleteLinkedListNode(ListNode? head, int value) {
  ListNode dummyHead = ListNode(val: 0);
  ListNode? current = dummyHead;

  while (head != null) {
    if (head.val != value) {
      current?.next = head;
      current = current?.next;
    }
    head = head.next;
  }
  current?.next = null;
  return dummyHead.next;
}
