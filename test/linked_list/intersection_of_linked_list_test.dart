import 'package:test/test.dart';

import '../../src/common/list_node.dart';
import '../../src/linked_list/intersection_of_linked_list.dart';

void main() {
  test("Test for finding intersection node in linked lists", () {
    final ListNode head1 =
        ListNode.createLinkedList([1, 5, 7, 9, 4, 67, 34, 56, 41])!;
    final ListNode head2 =
        ListNode.createLinkedList([45, 78, 2, 4, 7, 9, 76, 34, 41])!;

    final ListNode? intersection = findIntersectionNode(head1, head2);
    expect(intersection, isNotNull);
  });

  test("Test for non-intersecting linked lists", () {
    final ListNode head1 = ListNode.createLinkedList([1, 2, 3])!;
    final ListNode head2 = ListNode.createLinkedList([4, 5, 6])!;

    final ListNode? intersection = findIntersectionNode(head1, head2);
    expect(intersection, isNull);
  });
}
