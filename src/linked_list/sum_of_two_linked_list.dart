import '../common/list_node.dart';

void main() {
  final ListNode head1 =
      ListNode.createLinkedList([1, 5, 7, 9, 4, 67, 34, 56, 41])!;
  final ListNode head2 =
      ListNode.createLinkedList([45, 78, 2, 4, 7, 9, 76, 34, 41])!;
  print(calculateSumOfTwoLinkedList(head1, head2));
}

ListNode? calculateSumOfTwoLinkedList(ListNode? head1, ListNode? head2) {
  final ListNode dummyHead = ListNode(val: 0);
  ListNode current = dummyHead;
  while (head1 != null || head2 != null) {
    current.next = ListNode(val: (head1?.val ?? 0) + (head2?.val ?? 0));
    current = current.next!;

    head1 = head1?.next;
    head2 = head2?.next;
  }
  return dummyHead.next;
}
