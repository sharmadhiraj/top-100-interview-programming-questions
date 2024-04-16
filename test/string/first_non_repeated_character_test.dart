import 'package:test/test.dart';

import '../../src/string/first_non_repeated_character.dart';

void main() {
  test("Non-repeated character in the middle", () {
    expect(findFirstNotRepeatedCharacter("abcdefghija"), equals("b"));
  });

  test("Non-repeated character at the beginning", () {
    expect(findFirstNotRepeatedCharacter("xyzabcde"), equals("x"));
  });

  test("Non-repeated character at the end", () {
    expect(findFirstNotRepeatedCharacter("aabccbdeedfggfxyyxz"), equals("z"));
  });

  test("No non-repeated characters", () {
    expect(findFirstNotRepeatedCharacter("aaabbbccc"), equals(""));
  });
}
