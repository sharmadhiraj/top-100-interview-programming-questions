import 'package:test/test.dart';

import '../../src/common/list_node.dart';
import '../../src/random/search_node_linked_list.dart';

void main() {
  test('Test searchNode function', () {
    ListNode? head = ListNode.createLinkedList([1, 2, 3, 4, 5]);

    expect(searchNode(head, 3), equals(2));
    expect(searchNode(head, 6), equals(-1));
  });
}
