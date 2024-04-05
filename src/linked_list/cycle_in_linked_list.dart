import '../common/list_node.dart';

void main() {
  final ListNode head1 =
      createCycleLinkedList([1, 5, 7, 9, 4, 67, 34, 56, 41], 3)!;
  final ListNode? cycleStart1 = findCycleStart(head1);
  print(cycleStart1);

  final ListNode head2 = ListNode.createLinkedList([1, 3, 5, 7, 9])!;
  final ListNode? cycleStart2 = findCycleStart(head2);
  print(cycleStart2);
}

ListNode? findCycleStart(ListNode head) {
  ListNode? slow = head;
  ListNode? fast = head;

  // Detect cycle
  while (fast?.next != null && fast?.next?.next != null) {
    slow = slow?.next;
    fast = fast?.next?.next;
    if (slow == fast) {
      break; // Cycle detected
    }
  }

  // If no cycle, return null
  if (fast?.next == null || fast?.next?.next == null) {
    return null;
  }

  // Reset slow pointer to head
  slow = head;

  // Move slow and fast pointers until they meet at the cycle start
  while (slow != fast) {
    slow = slow?.next;
    fast = fast?.next;
  }

  return slow; // Return the starting node of the cycle
}

ListNode? createCycleLinkedList(List<int> values, int cycleStartIndex) {
  ListNode? head = ListNode.createLinkedList(values);
  if (head == null) return null;

  ListNode? cycleStartNode = head;
  int currentIndex = 0;
  while (cycleStartNode != null && currentIndex < cycleStartIndex) {
    cycleStartNode = cycleStartNode.next;
    currentIndex++;
  }

  ListNode? current = head;
  while (current?.next != null) {
    current = current?.next;
  }

  current!.next = cycleStartNode;

  return head;
}
