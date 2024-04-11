import 'package:test/test.dart';

import '../../src/common/list_node.dart';
import '../../src/linked_list/linked_list_partition.dart';

void main() {
  test(
    "Partitioning list by x = 16",
    () {
      final ListNode? head = ListNode.createLinkedList(
        [1, 5, 32, 55, 7, 9, 4, 67, 34, 8, 16, 56, 41],
      );
      final ListNode? result = partitionByX(head, 16);
      expect(
        result,
        equals(
          ListNode.createLinkedList(
            [1, 5, 7, 9, 4, 8, 16, 32, 55, 67, 34, 56, 41],
          ),
        ),
      );
    },
  );

  test(
    "Partitioning list by x = 10",
    () {
      final ListNode? head = ListNode.createLinkedList(
        [3, 15, 8, 2, 14, 6, 10, 4, 9],
      );
      final ListNode? result = partitionByX(head, 10);
      expect(
        result,
        equals(
          ListNode.createLinkedList(
            [3, 8, 2, 6, 4, 9, 15, 14, 10],
          ),
        ),
      );
    },
  );

  test(
    "Empty list",
    () {
      final ListNode? head = ListNode.createLinkedList([]);
      final ListNode? result = partitionByX(head, 5);
      expect(result, equals(null));
    },
  );

  test(
    "All values greater than x",
    () {
      final ListNode? head = ListNode.createLinkedList([10, 12, 15, 20]);
      final ListNode? result = partitionByX(head, 5);
      expect(
        result,
        equals(
          ListNode.createLinkedList([10, 12, 15, 20]),
        ),
      );
    },
  );
}
