import 'package:test/test.dart';

import '../../src/common/list_node.dart';
import '../../src/linked_list/remove_nth_last_node.dart';

void main() {
  test("Remove last node", () {
    final ListNode? head = ListNode.createLinkedList([1, 2, 3, 4, 5]);
    final ListNode? result = removeNthLastNode(head, 1);
    final expected = ListNode.createLinkedList([1, 2, 3, 4]);
    expect(result, equals(expected));
  });

  test("Remove second last node", () {
    final ListNode? head = ListNode.createLinkedList([1, 2, 3, 4, 5]);
    final ListNode? result = removeNthLastNode(head, 2);
    final expected = ListNode.createLinkedList([1, 2, 3, 5]);
    expect(result, equals(expected));
  });

  test("Remove first node", () {
    final ListNode? head = ListNode.createLinkedList([1, 2, 3, 4, 5]);
    final ListNode? result = removeNthLastNode(head, 4);
    final expected = ListNode.createLinkedList([1, 3, 4, 5]);
    expect(result, equals(expected));
  });

  test("Remove node beyond length", () {
    final ListNode? head = ListNode.createLinkedList([1, 2, 3, 4, 5]);
    final ListNode? result = removeNthLastNode(head, 10);
    final expected = ListNode.createLinkedList([1, 2, 3, 4, 5]);
    expect(result, equals(expected));
  });

  test("Remove last node from single node list", () {
    final ListNode? head = ListNode(val: 1);
    final ListNode? result = removeNthLastNode(head, 1);
    expect(result, equals(null));
  });
}
