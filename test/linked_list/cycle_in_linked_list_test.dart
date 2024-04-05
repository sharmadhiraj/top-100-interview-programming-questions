import 'package:test/test.dart';

import '../../src/common/list_node.dart';
import '../../src/linked_list/cycle_in_linked_list.dart';

void main() {
  test("Find cycle start in linked list", () {
    final ListNode head1 =
        createCycleLinkedList([1, 5, 7, 9, 4, 67, 34, 56, 41], 3)!;
    final ListNode? cycleStart1 = findCycleStart(head1);
    expect(cycleStart1!.val, 9);

    final ListNode head2 = ListNode.createLinkedList([1, 3, 5, 7, 9])!;
    final ListNode? cycleStart2 = findCycleStart(head2);
    expect(cycleStart2, null);
  });
}
