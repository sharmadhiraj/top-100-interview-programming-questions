import 'package:test/test.dart';

import '../../src/random/reverse_string.dart';

void main() {
  test(
    "Reverse string test",
    () {
      expect(reverseString("Hello World!"), "!dlroW olleH");
    },
  );

  test(
    "Reverse string test empty string",
    () {
      expect(reverseString(""), "");
    },
  );
}
