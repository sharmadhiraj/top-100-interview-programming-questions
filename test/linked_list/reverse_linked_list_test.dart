import 'package:test/test.dart';

import '../../src/common/list_node.dart';
import '../../src/linked_list/reverse_linked_list.dart';

void main() {
  test(
    "Reverse linked list",
    () {
      final ListNode original =
          ListNode.createLinkedList([1, 5, 7, 9, 4, 67, 34, 56, 41])!;

      final ListNode reversed = reverseLinkedList(original)!;

      expect(reversed.val, 41);
      expect(reversed.next!.val, 56);
      expect(reversed.next!.next!.val, 34);
      expect(reversed.next!.next!.next!.val, 67);
      expect(reversed.next!.next!.next!.next!.val, 4);
      expect(reversed.next!.next!.next!.next!.next!.val, 9);
      expect(reversed.next!.next!.next!.next!.next!.next!.val, 7);
      expect(reversed.next!.next!.next!.next!.next!.next!.next!.val, 5);
      expect(reversed.next!.next!.next!.next!.next!.next!.next!.next!.val, 1);
      expect(
          reversed.next!.next!.next!.next!.next!.next!.next!.next!.next, null);
    },
  );
}
