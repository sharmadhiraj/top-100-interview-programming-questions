import 'package:test/test.dart';

import '../../src/string/check_if_string_only_contains_digits.dart';

void main() {
  test("String contains digits and alphabets", () {
    expect(stringOnlyContainsDigits("123 Hello world 123"), false);
  });

  test("String contains only digits", () {
    expect(stringOnlyContainsDigits("34534634343543"), true);
  });

  test("Empty string", () {
    expect(stringOnlyContainsDigits(""), true);
  });

  test("String contains only alphabets", () {
    expect(stringOnlyContainsDigits("Hello"), false);
  });

  test("String contains digits and special characters", () {
    expect(stringOnlyContainsDigits("123@!#"), false);
  });
}
