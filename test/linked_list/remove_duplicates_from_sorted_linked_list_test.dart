import 'package:test/test.dart';

import '../../src/common/list_node.dart';
import '../../src/linked_list/remove_duplicates_from_sorted_linked_list.dart';

void main() {
  test(
    "Removing duplicates from a linked list",
    () {
      final ListNode? head1 = ListNode.createLinkedList(
        [1, 5, 7, 9, 9, 13, 15, 16, 16, 16, 22, 41, 41],
      );
      final ListNode? result1 = removeDuplicatesFromLinkedList(head1);
      expect(
        result1,
        equals(ListNode.createLinkedList([1, 5, 7, 9, 13, 15, 16, 22, 41])),
      );

      final ListNode? head2 = ListNode.createLinkedList(
        [1, 1, 1, 1, 1],
      );
      final ListNode? result2 = removeDuplicatesFromLinkedList(head2);
      expect(result2, equals(ListNode.createLinkedList([1])));

      final ListNode? head3 = ListNode.createLinkedList(
        [1, 2, 3, 4, 5],
      );
      final ListNode? result3 = removeDuplicatesFromLinkedList(head3);
      expect(result3, equals(ListNode.createLinkedList([1, 2, 3, 4, 5])));

      final ListNode? head4 = ListNode.createLinkedList(
        [],
      );
      final ListNode? result4 = removeDuplicatesFromLinkedList(head4);
      expect(result4, equals(ListNode.createLinkedList([])));
    },
  );
}
