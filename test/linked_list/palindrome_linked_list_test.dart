import 'package:test/test.dart';

import '../../src/common/list_node.dart';
import '../../src/linked_list/palindrome_linked_list.dart';

void main() {
  test("Palindrome Test 1", () {
    final ListNode head1 = ListNode.createLinkedList([1, 2, 3, 2, 1])!;
    expect(isPalindrome(head1), true);
  });

  test("Palindrome Test 2", () {
    final ListNode head2 = ListNode.createLinkedList([1, 2, 3, 4, 5])!;
    expect(isPalindrome(head2), false);
  });

  test("Palindrome Test 3", () {
    final ListNode head3 = ListNode.createLinkedList([1, 2, 2, 1])!;
    expect(isPalindrome(head3), true);
  });

  test("Palindrome Test 4", () {
    final ListNode head4 = ListNode.createLinkedList([1, 2, 3, 3, 2, 1])!;
    expect(isPalindrome(head4), true);
  });

  test("Palindrome Test 5", () {
    final ListNode head5 = ListNode.createLinkedList([1])!;
    expect(isPalindrome(head5), true);
  });

  test("Palindrome Test 6", () {
    final ListNode? head6 = ListNode.createLinkedList([]);
    expect(isPalindrome(head6), true);
  });
}
