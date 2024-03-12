import 'dart:convert';

class ListNode {
  final int val;
  ListNode? next;

  ListNode({required this.val, this.next});

  @override
  String toString() {
    return jsonEncode({"Value": val, "Next": next?.val});
  }
}

void main() {
  ListNode head = ListNode(val: 1);
  head.next = ListNode(val: 2);
  head.next?.next = ListNode(val: 3);
  head.next?.next?.next = ListNode(val: 4);
  head.next?.next?.next?.next = ListNode(val: 5);

  print(getNthNode(head, 3));
}

ListNode? getNthNode(ListNode? node, int n) {
  if (node == null) return null;
  if (n <= 1) return node;
  return getNthNode(node.next, n - 1);
}
