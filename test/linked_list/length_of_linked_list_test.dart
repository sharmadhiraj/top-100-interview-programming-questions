import 'package:test/test.dart';

import '../../src/common/list_node.dart';
import '../../src/linked_list/length_of_linked_list.dart';

void main() {
  test(
    "Finding the length of a linked list",
    () {
      final ListNode? head = ListNode.createLinkedList(
        [45, 78, 2, 4, 7, 9, 76, 34, 41, 5, 12, 78, 4, 76, 2, 33],
      );
      expect(findLengthOfLinkedList(head), equals(16));

      final ListNode? head2 = ListNode.createLinkedList(
        [],
      );
      expect(findLengthOfLinkedList(head2), equals(0));

      final ListNode? head3 = ListNode.createLinkedList(
        [1, 2, 3, 4, 5],
      );
      expect(findLengthOfLinkedList(head3), equals(5));
    },
  );
}
