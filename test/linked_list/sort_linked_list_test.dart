import 'package:test/test.dart';

import '../../src/common/list_node.dart';
import '../../src/linked_list/sort_linked_list.dart';

void main() {
  test(
    "Sort empty list",
    () {
      final ListNode? head = null;
      final ListNode? sortedList = sortLinkedList(head);
      expect(sortedList, null);
    },
  );

  test(
    "Sort list with one node",
    () {
      final ListNode? head = ListNode(val: 5);
      final sortedList = sortLinkedList(head);
      expect(sortedList!.val, equals(5));
    },
  );

  test(
    "Sort list with multiple nodes",
    () {
      final ListNode? head =
          ListNode.createLinkedList([5, 3, 8, 2, 7, 1, 6, 4]);
      ListNode? sortedList = sortLinkedList(head);
      final expectedValues = [1, 2, 3, 4, 5, 6, 7, 8];
      for (int i = 0; i < expectedValues.length; i++) {
        expect(sortedList!.val, equals(expectedValues[i]));
        sortedList = sortedList.next;
      }
    },
  );

  test(
    "Sort list with already sorted nodes",
    () {
      final ListNode? head = ListNode.createLinkedList([1, 2, 3, 4, 5]);
      ListNode? sortedList = sortLinkedList(head);
      final expectedValues = [1, 2, 3, 4, 5];
      for (int i = 0; i < expectedValues.length; i++) {
        expect(sortedList!.val, equals(expectedValues[i]));
        sortedList = sortedList.next;
      }
    },
  );

  test(
    "Sort list with reverse sorted nodes",
    () {
      final ListNode? head = ListNode.createLinkedList([5, 4, 3, 2, 1]);
      ListNode? sortedList = sortLinkedList(head);
      final expectedValues = [1, 2, 3, 4, 5];
      for (int i = 0; i < expectedValues.length; i++) {
        expect(sortedList!.val, equals(expectedValues[i]));
        sortedList = sortedList.next;
      }
    },
  );
}
