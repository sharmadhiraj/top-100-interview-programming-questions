import 'package:test/test.dart';

import '../../src/random/nth_node_linked_list.dart';

void main() {
  test(
    "Get Nth Node Test",
    () {
      ListNode head = ListNode(val: 1);
      head.next = ListNode(val: 2);
      head.next?.next = ListNode(val: 3);
      head.next?.next?.next = ListNode(val: 4);
      head.next?.next?.next?.next = ListNode(val: 5);

      ListNode? thirdNode = getNthNode(head, 3);

      expect(thirdNode?.val, 3);
      expect(thirdNode?.next?.val, 4);
    },
  );
}
