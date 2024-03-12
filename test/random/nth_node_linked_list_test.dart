import 'package:test/test.dart';

import '../../src/common/list_node.dart';
import '../../src/random/nth_node_linked_list.dart';

void main() {
  test(
    "Get Nth Node Test",
    () {
      ListNode? head = ListNode.createLinkedList([1, 2, 3, 4, 5]);

      ListNode? thirdNode = getNthNode(head, 3);

      expect(thirdNode?.val, 3);
      expect(thirdNode?.next?.val, 4);
    },
  );
}
