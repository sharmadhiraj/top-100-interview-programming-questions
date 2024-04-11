import '../common/list_node.dart';

void main() {
  final ListNode? head = ListNode.createLinkedList(
    [1, 5, 32, 55, 7, 9, 4, 67, 34, 8, 16, 56, 41],
  );
  print(partitionByX(head, 16));
}

ListNode? partitionByX(ListNode? head, int x) {
  ListNode dummy1 = ListNode(val: 0);
  ListNode dummy2 = ListNode(val: 0);

  ListNode? current1 = dummy1;
  ListNode? current2 = dummy2;

  while (head != null) {
    if (head.val < x) {
      current1?.next = head;
      current1 = current1?.next;
    } else {
      current2?.next = head;
      current2 = current2?.next;
    }
    head = head.next;
  }
  current1?.next = dummy2.next;
  return dummy1.next;
}
