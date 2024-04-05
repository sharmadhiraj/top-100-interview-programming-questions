import 'package:test/test.dart';

import '../../src/common/list_node.dart';
import '../../src/linked_list/middle_of_linked_list.dart';

void main() {
  test("Test case 1", () {
    final ListNode head1 =
        ListNode.createLinkedList([1, 5, 7, 9, 4, 67, 34, 56, 41])!;
    final ListNode? middleNode1 = middleOfLinkedList(head1);
    expect(middleNode1?.val, 4);
  });

  test("Test case 2", () {
    final ListNode head2 = ListNode.createLinkedList([1, 3, 5, 7, 9])!;
    final ListNode? middleNode2 = middleOfLinkedList(head2);
    expect(middleNode2?.val, 5);
  });

  test("Test case 3", () {
    final ListNode head3 = ListNode.createLinkedList([1])!;
    final ListNode? middleNode3 = middleOfLinkedList(head3);
    expect(middleNode3?.val, 1);
  });

  test("Test case 4", () {
    final ListNode head4 = ListNode.createLinkedList([2, 4, 6, 8, 10, 12])!;
    final ListNode? middleNode4 = middleOfLinkedList(head4);
    expect(middleNode4?.val, 6);
  });
}
