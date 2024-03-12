import '../common/list_node.dart';

void main() {
  ListNode? head = ListNode.createLinkedList([1, 2, 3, 4, 5]);

  print("Index of node : ${searchNode(head, 3)}");
}

int searchNode(ListNode? head, int value) {
  ListNode? next = head;
  int i = 0;
  while (next != null) {
    if (next.val == value) {
      return i;
    }
    next = next.next;
    i++;
  }
  return -1;
}
