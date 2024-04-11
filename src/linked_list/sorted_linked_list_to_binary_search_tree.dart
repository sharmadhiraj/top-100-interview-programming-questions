import '../common/list_node.dart';
import '../common/tree_node.dart';

void main() {
  final ListNode? head = ListNode.createLinkedList(
    [3, 5, 8, 11, 15, 23, 41, 54, 61],
  );
  print(sortedListToBST(head));
}

TreeNode? sortedListToBST(ListNode? head) {
  if (head == null) {
    return null;
  }
  ListNode? middle = findMiddle(head);
  TreeNode root = TreeNode(val: middle!.val);
  if (head == middle) {
    return root;
  }
  root.left = sortedListToBST(head);
  root.right = sortedListToBST(middle.next);
  return root;
}

ListNode? findMiddle(ListNode? head) {
  ListNode? slow = head;
  ListNode? fast = head;
  ListNode? prev = null;
  while (fast != null && fast.next != null) {
    prev = slow;
    slow = slow!.next;
    fast = fast.next!.next;
  }
  if (prev != null) {
    prev.next = null;
  }
  return slow;
}
