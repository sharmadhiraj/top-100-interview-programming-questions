import 'package:test/test.dart';

import '../../src/random/string_permutations.dart';

void main() {
  test(
    "Test findPermutations function",
    () {
      expect(
        findPermutations("abc"),
        unorderedEquals(["abc", "acb", "bac", "bca", "cab", "cba"]),
      );
      expect(
        findPermutations("a"),
        unorderedEquals(["a"]),
      );
      expect(
        findPermutations(""),
        unorderedEquals([]),
      );
      expect(
        findPermutations("abcd"),
        unorderedEquals(
          [
            "abcd",
            "abdc",
            "acbd",
            "acdb",
            "adbc",
            "adcb",
            "bacd",
            "badc",
            "bcad",
            "bcda",
            "bdac",
            "bdca",
            "cabd",
            "cadb",
            "cbad",
            "cbda",
            "cdab",
            "cdba",
            "dabc",
            "dacb",
            "dbac",
            "dbca",
            "dcab",
            "dcba",
          ],
        ),
      );
    },
  );
}
