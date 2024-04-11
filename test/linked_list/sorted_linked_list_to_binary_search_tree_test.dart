import 'package:test/test.dart';

import '../../src/common/list_node.dart';
import '../../src/common/tree_node.dart';
import '../../src/linked_list/sorted_linked_list_to_binary_search_tree.dart';

void main() {
  test(
    "Empty list should return null",
    () {
      final ListNode? emptyList = null;
      final TreeNode? result = sortedListToBST(emptyList);
      expect(result, equals(null));
    },
  );

  test(
    "Single node list should return a tree with single node",
    () {
      final ListNode singleNode = ListNode(val: 10);
      final TreeNode? result = sortedListToBST(singleNode);
      expect(result, equals(TreeNode(val: 10)));
    },
  );

  test(
    "List with multiple number of elements",
    () {
      final ListNode? evenList = ListNode.createLinkedList(
        [3, 5, 8, 11, 15, 23, 41, 54],
      );
      final TreeNode? result = sortedListToBST(evenList);
      expect(
        result,
        equals(
          TreeNode(
            val: 15,
            left: TreeNode(
              val: 8,
              left: TreeNode(val: 3),
              right: TreeNode(val: 11),
            ),
            right: TreeNode(
              val: 41,
              left: TreeNode(val: 23, right: TreeNode(val: 54)),
            ),
          ),
        ),
      );
    },
  );
}
