import 'package:test/test.dart';

import '../../src/random/remove_special_characters.dart';

void main() {
  test(
    "Test removeSpecialCharacters function",
    () {
      expect(
        removeSpecialCharacters("hello_world123!@#"),
        equals("helloworld"),
      );
      expect(
        removeSpecialCharacters("12345"),
        equals(""),
      );
      expect(
        removeSpecialCharacters("!@#\$%"),
        equals(""),
      );
      expect(
        removeSpecialCharacters("hello"),
        equals("hello"),
      );
    },
  );
}
