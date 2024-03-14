import 'package:test/test.dart';

import '../../src/random/check_palindrome.dart';

void main() {
  test(
    "Test isPalindromeWithoutConvertingToString function",
    () {
      assert(isPalindromeWithoutConvertingToString(121) == true);
      assert(isPalindromeWithoutConvertingToString(12321) == true);
      assert(isPalindromeWithoutConvertingToString(123454321) == true);

      assert(isPalindromeWithoutConvertingToString(-121) == false);
      assert(isPalindromeWithoutConvertingToString(-12321) == false);

      assert(isPalindromeWithoutConvertingToString(123) == false);
      assert(isPalindromeWithoutConvertingToString(123456789) == false);
    },
  );

  test(
    "Test isPalindrome function",
    () {
      assert(isPalindrome(121) == true);
      assert(isPalindrome(12321) == true);
      assert(isPalindrome(123454321) == true);

      assert(isPalindrome(-121) == false);
      assert(isPalindrome(-12321) == false);

      assert(isPalindrome(123) == false);
      assert(isPalindrome(123456789) == false);
    },
  );
}
