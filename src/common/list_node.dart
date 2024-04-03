class ListNode {
  final int val;
  ListNode? next;

  ListNode({required this.val, this.next});

  @override
  String toString() {
    final StringBuffer stringBuffer = StringBuffer();
    ListNode? head = this;
    while (head != null) {
      stringBuffer.write(head.val);
      if (head.next != null) {
        stringBuffer.write(" -> ");
      }
      head = head.next;
    }
    return stringBuffer.toString();
  }

  static ListNode? createLinkedList(List<int> values) {
    ListNode? head;
    ListNode? current;

    for (int val in values) {
      if (head == null) {
        head = ListNode(val: val);
        current = head;
      } else {
        current?.next = ListNode(val: val);
        current = current?.next;
      }
    }
    return head;
  }
}
