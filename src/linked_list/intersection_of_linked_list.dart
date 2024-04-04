import '../common/list_node.dart';

void main() {
  final ListNode head1 =
      ListNode.createLinkedList([1, 5, 7, 9, 4, 67, 34, 56, 41])!;
  final ListNode head2 =
      ListNode.createLinkedList([45, 78, 2, 4, 7, 9, 76, 34, 41])!;

  final ListNode? intersection = findIntersectionNode(head1, head2);
  print(intersection);
}

ListNode? findIntersectionNode(ListNode head1, ListNode head2) {
  ListNode tail1 = head1;
  ListNode tail2 = head2;

  while (tail1.next != null) {
    tail1 = tail1.next!;
  }
  while (tail2.next != null) {
    tail2 = tail2.next!;
  }

  if (tail1 == tail2) {
    return tail1;
  }
  return null;
}
