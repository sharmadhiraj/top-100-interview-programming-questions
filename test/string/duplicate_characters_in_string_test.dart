import 'package:test/test.dart';

import '../../src/string/duplicate_characters_in_string.dart';

void main() {
  test(
    "Single duplicate",
    () {
      expect(findDuplicateCharacters("Hello"), ["l"]);
    },
  );

  test(
    "Multiple duplicates",
    () {
      expect(findDuplicateCharacters("Mississippi"), ["s", "i", "p"]);
    },
  );

  test(
    "Empty input",
    () {
      expect(findDuplicateCharacters(""), []);
    },
  );
}
