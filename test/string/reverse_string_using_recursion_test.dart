import 'package:test/test.dart';

import '../../src/string/reverse_string_using_recursion.dart';

void main() {
  test("Empty string", () {
    expect(reverseString(""), "");
  });

  test("String with one character", () {
    expect(reverseString("a"), "a");
  });

  test("String with multiple characters", () {
    expect(reverseString("Hello"), "olleH");
  });

  test("String with special characters", () {
    expect(reverseString("!@#\$%^&*()"), ")(*&^%\$#@!");
  });

  test("String with numbers", () {
    expect(reverseString("1234567890"), "0987654321");
  });
}
