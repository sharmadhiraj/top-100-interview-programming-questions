import 'package:test/test.dart';

import '../../src/string/reverse_string_in_place.dart';

void main() {
  test("Reverse string with even length", () {
    expect(reverseStringInPlace("Hello"), equals("olleH"));
  });

  test("Reverse string with odd length", () {
    expect(reverseStringInPlace("World"), equals("dlroW"));
  });

  test("Reverse empty string", () {
    expect(reverseStringInPlace(""), equals(""));
  });

  test("Reverse string with special characters", () {
    expect(reverseStringInPlace("!@#123"), equals("321#@!"));
  });

  test("Reverse string with spaces", () {
    expect(reverseStringInPlace("Hello world"), equals("dlrow olleH"));
  });
}
