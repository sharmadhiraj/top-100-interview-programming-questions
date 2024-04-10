import '../common/list_node.dart';

void main() {
  final ListNode? head = ListNode.createLinkedList(
    [1, 2, 3, 4, 5],
  );
  print(removeNthLastNode(head, 3));
}

ListNode? removeNthLastNode(ListNode? head, int n) {
  ListNode? fast = head;
  ListNode? slow = head;

  for (int i = 0; i <= n; i++) {
    if (fast == null) {
      if (i == n) {
        return head?.next;
      }
      return head;
    }
    fast = fast.next;
  }

  slow = head;
  while (fast != null) {
    slow = slow?.next;
    fast = fast.next;
  }
  slow?.next = slow.next?.next;

  return head;
}
