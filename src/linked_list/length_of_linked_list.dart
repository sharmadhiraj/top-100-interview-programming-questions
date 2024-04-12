import '../common/list_node.dart';

void main() {
  final ListNode? head = ListNode.createLinkedList(
    [45, 78, 2, 4, 7, 9, 76, 34, 41, 5, 12, 78, 4, 76, 2, 33],
  );
  print(findLengthOfLinkedList(head));
}

int findLengthOfLinkedList(ListNode? head) {
  int length = 0;
  while (head != null) {
    length++;
    head = head.next;
  }
  return length;
}
