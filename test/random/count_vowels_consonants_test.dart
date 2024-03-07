import 'package:test/test.dart';

import '../../src/random/count_vowels_consonants.dart';

void main() {
  test(
    "Test countVowelsAndConsonants function",
    () {
      String input = "Hello World";
      Map<String, int> result = countVowelsAndConsonants(input);
      expect(result["vowels"], 3);
      expect(result["consonants"], 7);
    },
  );
}
