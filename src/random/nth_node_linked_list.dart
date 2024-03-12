import '../common/list_node.dart';

void main() {
  ListNode? head = ListNode.createLinkedList([1, 2, 3, 4, 5]);

  print(getNthNode(head, 3));
}

ListNode? getNthNode(ListNode? node, int n) {
  if (node == null) return null;
  if (n <= 1) return node;
  return getNthNode(node.next, n - 1);
}
