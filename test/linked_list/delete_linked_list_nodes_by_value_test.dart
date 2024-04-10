import 'package:test/test.dart';

import '../../src/common/list_node.dart';
import '../../src/linked_list/delete_linked_list_nodes_by_value.dart';

void main() {
  test(
    "Delete node with specific value from linked list",
    () {
      final ListNode? head1 = ListNode.createLinkedList(
        [11, 44, 33, 1, 3, 68, 11, 78, 3, 97, 11],
      );
      final ListNode? result1 = deleteLinkedListNode(head1, 11);
      expect(result1?.toString(), "44 -> 33 -> 1 -> 3 -> 68 -> 78 -> 3 -> 97");

      final ListNode? head2 = ListNode.createLinkedList([1, 2, 3, 5, 4, 5]);
      final ListNode? result2 = deleteLinkedListNode(head2, 5);
      expect(result2?.toString(), "1 -> 2 -> 3 -> 4");

      final ListNode? head3 = ListNode.createLinkedList([5, 5, 5, 5, 5]);
      final ListNode? result3 = deleteLinkedListNode(head3, 5);
      expect(result3, isNull);
    },
  );
}
