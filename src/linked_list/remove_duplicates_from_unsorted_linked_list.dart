import '../common/list_node.dart';

void main() {
  final ListNode? head = ListNode.createLinkedList(
    [45, 78, 2, 4, 7, 9, 76, 34, 41, 5, 12, 78, 4, 76, 2, 33],
  );
  print(removeDuplicatesFromUnsortedLinkedList(head));
}

ListNode? removeDuplicatesFromUnsortedLinkedList(ListNode? head) {
  final Set<int> nodes = {};
  final ListNode dummyHead = ListNode(val: 0);
  ListNode? current = dummyHead;

  while (head != null) {
    if (!nodes.contains(head.val)) {
      current?.next = head;
      current = current?.next;
      nodes.add(head.val);
    }
    head = head.next;
  }
  current?.next = null;
  return dummyHead.next;
}
