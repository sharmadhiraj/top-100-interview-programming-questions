import 'package:test/test.dart';

import '../../src/random/matching_characters.dart';

void main() {
  test(
    "Test getMatchingCharacters function with no matching characters",
    () {
      String string1 = "Hello World";
      String string2 = "xyz";
      List<String> result = getMatchingCharacters(string1, string2);
      expect(result, []);
    },
  );

  test(
    "Test getMatchingCharacters function with some matching characters",
    () {
      String string1 = "Hello World";
      String string2 = "def";
      List<String> result = getMatchingCharacters(string1, string2);
      expect(result, ['d', 'e']);
    },
  );
}
