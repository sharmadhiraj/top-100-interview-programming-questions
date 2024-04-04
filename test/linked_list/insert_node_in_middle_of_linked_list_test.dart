import 'package:test/test.dart';

import '../../src/common/list_node.dart';
import '../../src/linked_list/insert_node_in_middle_of_linked_list.dart';

void main() {
  test("Insert node in middle of even-length linked list", () {
    final ListNode originalEven =
        ListNode.createLinkedList([1, 5, 7, 9, 4, 67, 34, 56])!;
    final ListNode updatedEven =
        insertNodeInMiddle(originalEven, ListNode(val: 33));

    expect(updatedEven.toString(),
        equals("1 -> 5 -> 7 -> 9 -> 33 -> 4 -> 67 -> 34 -> 56"));
  });

  test("Insert node in middle of odd-length linked list", () {
    final ListNode originalOdd =
        ListNode.createLinkedList([1, 5, 7, 9, 4, 67, 34, 56, 41])!;
    final ListNode updatedOdd =
        insertNodeInMiddle(originalOdd, ListNode(val: 33));

    expect(updatedOdd.toString(),
        equals("1 -> 5 -> 7 -> 9 -> 4 -> 33 -> 67 -> 34 -> 56 -> 41"));
  });
}
