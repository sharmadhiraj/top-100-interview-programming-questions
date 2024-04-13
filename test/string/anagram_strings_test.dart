import 'package:test/test.dart';

import '../../src/string/anagram_strings.dart';

void main() {
  test("Anagrams: 'taste' and 'state'", () {
    expect(areAnagrams("taste", "state"), true);
  });

  test("Non-anagrams: 'hello' and 'world'", () {
    expect(areAnagrams("hello", "world"), false);
  });

  test("Anagrams with spaces: 'debit card' and 'bad credit'", () {
    expect(areAnagrams("debit card", "bad credit"), true);
  });

  test("Anagrams with different cases: 'Tea' and 'eat'", () {
    expect(areAnagrams("Tea", "eat"), true);
  });
}
