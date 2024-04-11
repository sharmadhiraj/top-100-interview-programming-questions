import 'package:test/test.dart';

import '../../src/common/list_node.dart';
import '../../src/linked_list/merge_two_sorted_linked_list.dart';

void main() {
  test(
    "Merge two non-empty linked lists",
    () {
      final ListNode head1 =
          ListNode.createLinkedList([1, 5, 7, 9, 13, 15, 16, 22, 41])!;
      final ListNode head2 =
          ListNode.createLinkedList([3, 5, 8, 11, 15, 23, 41, 54, 61])!;
      final ListNode? mergedList = mergeTwoLinkedList(head1, head2);

      final ListNode? expected = ListNode.createLinkedList(
          [1, 3, 5, 5, 7, 8, 9, 11, 13, 15, 15, 16, 22, 23, 41, 41, 54, 61])!;
      expect(mergedList, expected);
    },
  );

  test(
    "Merge empty linked list with non-empty linked list",
    () {
      final ListNode? head1 = null;
      final ListNode head2 = ListNode.createLinkedList(
        [3, 5, 8, 11, 15, 23, 41, 54, 61],
      )!;
      final ListNode? mergedList = mergeTwoLinkedList(head1, head2);
      expect(mergedList, head2);
    },
  );

  test(
    "Merge non-empty linked list with empty linked list",
    () {
      final ListNode head1 =
          ListNode.createLinkedList([1, 5, 7, 9, 13, 15, 16, 22, 41])!;
      final ListNode? head2 = null;
      final ListNode? mergedList = mergeTwoLinkedList(head1, head2);
      expect(mergedList, head1);
    },
  );

  test(
    "Merge two empty linked lists",
    () {
      final ListNode? head1 = null;
      final ListNode? head2 = null;
      final ListNode? mergedList = mergeTwoLinkedList(head1, head2);
      expect(mergedList, null);
    },
  );
}
