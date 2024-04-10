import '../common/list_node.dart';

void main() {
  final ListNode? head = ListNode.createLinkedList([5, 3, 8, 2, 7, 1, 6, 4]);
  final sortedList = sortLinkedList(head);
  print(sortedList);
}

ListNode? sortLinkedList(ListNode? head) {
  if (head == null || head.next == null) {
    return head;
  }

  final mid = findMiddle(head);
  final leftHalf = head;
  final rightHalf = mid?.next;
  mid!.next = null;

  final sortedLeft = sortLinkedList(leftHalf);
  final sortedRight = sortLinkedList(rightHalf);

  return merge(sortedLeft, sortedRight);
}

ListNode? findMiddle(ListNode? head) {
  if (head == null) return null;
  ListNode? slow = head;
  ListNode? fast = head;
  while (fast?.next != null && fast?.next?.next != null) {
    slow = slow!.next;
    fast = fast?.next?.next;
  }
  return slow;
}

ListNode? merge(ListNode? l1, ListNode? l2) {
  ListNode dummyHead = ListNode(val: 0);
  ListNode? current = dummyHead;
  while (l1 != null && l2 != null) {
    if (l1.val < l2.val) {
      current!.next = l1;
      l1 = l1.next;
    } else {
      current!.next = l2;
      l2 = l2.next;
    }
    current = current.next;
  }
  current!.next = l1 ?? l2;
  return dummyHead.next;
}
