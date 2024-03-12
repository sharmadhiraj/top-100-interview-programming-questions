import 'dart:convert';

class ListNode {
  final int val;
  ListNode? next;

  ListNode({required this.val, this.next});

  @override
  String toString() {
    return jsonEncode({"Value": val, "Next": next?.val});
  }

  static ListNode? createLinkedList(List<int> values) {
    ListNode? head;
    ListNode? current;

    for (int val in values) {
      if (head == null) {
        head = ListNode(val: val);
        current = head;
      } else {
        current?.next = ListNode(val: val);
        current = current?.next;
      }
    }

    return head;
  }
}
