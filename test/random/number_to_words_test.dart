import 'package:test/test.dart';

import '../../src/random/number_to_words.dart';

void main() {
  test(
    "Test numberToWords function",
    () {
      expect(
        numberToWords(0),
        "zero",
      );

      expect(
        numberToWords(123),
        "one hundred twenty-three",
      );
      expect(
        numberToWords(4567),
        "four thousand five hundred sixty-seven",
      );
      expect(
        numberToWords(7890123),
        "seven million eight hundred ninety thousand one hundred twenty-three",
      );
      expect(
        numberToWords(1000000000),
        "one billion",
      );

      expect(
        numberToWords(-123),
        "Negative number not supported!",
      );
    },
  );
}
