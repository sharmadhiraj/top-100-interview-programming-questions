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
      if (stringBuffer.length > 32) {
        stringBuffer.write(" .......");
        break;
      }
    }
    return stringBuffer.toString();
  }

  @override
  operator ==(o) => o is ListNode && o.val == val && o.next?.val == next?.val;

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
