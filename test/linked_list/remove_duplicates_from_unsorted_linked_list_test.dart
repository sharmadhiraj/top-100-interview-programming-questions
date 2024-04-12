import 'package:test/test.dart';

import '../../src/common/list_node.dart';
import '../../src/linked_list/remove_duplicates_from_unsorted_linked_list.dart';

void main() {
  test(
    "Removing duplicates from a linked list",
    () {
      final ListNode? head1 = ListNode.createLinkedList(
        [45, 78, 2, 4, 7, 9, 76, 34, 41, 5, 12, 78, 4, 76, 2, 33],
      );
      final ListNode? result1 = removeDuplicatesFromUnsortedLinkedList(head1);
      expect(
        result1,
        equals(ListNode.createLinkedList(
            [45, 78, 2, 4, 7, 9, 76, 34, 41, 5, 12, 33])),
      );

      final ListNode? head2 = ListNode.createLinkedList(
        [1, 1, 1, 1, 1],
      );
      final ListNode? result2 = removeDuplicatesFromUnsortedLinkedList(head2);
      expect(result2, equals(ListNode.createLinkedList([1])));

      final ListNode? head3 = ListNode.createLinkedList(
        [1, 2, 3, 4, 5],
      );
      final ListNode? result3 = removeDuplicatesFromUnsortedLinkedList(head3);
      expect(result3, equals(ListNode.createLinkedList([1, 2, 3, 4, 5])));

      final ListNode? head4 = ListNode.createLinkedList(
        [],
      );
      final ListNode? result4 = removeDuplicatesFromUnsortedLinkedList(head4);
      expect(result4, equals(ListNode.createLinkedList([])));
    },
  );
}
