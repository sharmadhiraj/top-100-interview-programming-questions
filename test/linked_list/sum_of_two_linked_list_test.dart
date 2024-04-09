import 'package:test/test.dart';

import '../../src/common/list_node.dart';
import '../../src/linked_list/sum_of_two_linked_list.dart';

void main() {
  test("Calculate sum of two linked lists", () {
    final ListNode head1 =
        ListNode.createLinkedList([1, 5, 7, 9, 4, 67, 34, 56, 41])!;
    final ListNode head2 =
        ListNode.createLinkedList([45, 78, 2, 4, 7, 9, 76, 34, 41])!;
    final ListNode? result1 = calculateSumOfTwoLinkedList(head1, head2);
    expect(result1?.toString(),
        "46 -> 83 -> 9 -> 13 -> 11 -> 76 -> 110 -> 90 -> 82");

    final ListNode head3 = ListNode.createLinkedList([1, 2, 3])!;
    final ListNode head4 = ListNode.createLinkedList([4, 5, 6, 7])!;
    final ListNode? result2 = calculateSumOfTwoLinkedList(head3, head4);
    expect(result2?.toString(), "5 -> 7 -> 9 -> 7");

    final ListNode head5 = ListNode.createLinkedList([9, 9, 9])!;
    final ListNode head6 = ListNode.createLinkedList([1])!;
    final ListNode? result3 = calculateSumOfTwoLinkedList(head5, head6);
    expect(result3?.toString(), "10 -> 9 -> 9");
  });
}
