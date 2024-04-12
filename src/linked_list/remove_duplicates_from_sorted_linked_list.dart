import '../common/list_node.dart';

void main() {
  final ListNode? head = ListNode.createLinkedList(
    [1, 5, 7, 9, 9, 13, 15, 16, 16, 16, 22, 41, 41],
  );
  print(removeDuplicatesFromLinkedList(head));
}

ListNode? removeDuplicatesFromLinkedList(ListNode? head) {
  final ListNode dummyHead = ListNode(val: 0);
  ListNode? current = dummyHead;

  while (head != null) {
    if (current?.val != head.val) {
      current?.next = head;
      current = current?.next;
    }
    head = head.next;
  }
  current?.next = null;
  return dummyHead.next;
}
