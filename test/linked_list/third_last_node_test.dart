import 'package:test/test.dart';

import '../../src/common/list_node.dart';
import '../../src/linked_list/third_last_node.dart';

void main() {
  test("Test getThirdLastNode function", () {
    final ListNode head1 =
        ListNode.createLinkedList([1, 5, 7, 9, 4, 67, 34, 56, 41])!;
    expect(getThirdLastNode(head1)?.val, equals(34));

    final ListNode head2 = ListNode.createLinkedList([1, 5, 7])!;
    expect(getThirdLastNode(head2)?.val, 1);

    final ListNode head3 = ListNode.createLinkedList([1, 5])!;
    expect(getThirdLastNode(head3), isNull);
  });
}
