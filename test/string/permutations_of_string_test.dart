import 'package:test/test.dart';

import '../../src/string/permutations_of_string.dart';

void main() {
  test(
    "Single character",
    () {
      expect(permutations("a"), ["a"]);
    },
  );

  test(
    "Multiple characters",
    () {
      expect(
        permutations("abc"),
        ["abc", "acb", "bac", "bca", "cab", "cba"],
      );
    },
  );

  test(
    "Empty string",
    () {
      expect(permutations(""), []);
    },
  );
}
