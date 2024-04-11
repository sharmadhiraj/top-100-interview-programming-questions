import '../common/list_node.dart';

void main() {
  final ListNode? head1 = ListNode.createLinkedList(
    [1, 5, 7, 9, 13, 15, 16, 22, 41],
  );
  final ListNode? head2 = ListNode.createLinkedList(
    [3, 5, 8, 11, 15, 23, 41, 54, 61],
  );
  print(mergeTwoLinkedList(head1, head2));
}

ListNode? mergeTwoLinkedList(ListNode? head1, ListNode? head2) {
  ListNode dummyHead = ListNode(val: 0);
  ListNode? current = dummyHead;

  while (head1 != null && head2 != null) {
    if (head1.val > head2.val) {
      current?.next = head2;
      head2 = head2.next;
    } else {
      current?.next = head1;
      head1 = head1.next;
    }
    current = current?.next;
  }

  //Append remaining nodes
  if (head1 == null) {
    current?.next = head2;
  } else {
    current?.next = head1;
  }
  return dummyHead.next;
}
