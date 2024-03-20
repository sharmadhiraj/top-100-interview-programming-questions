import 'package:test/test.dart';

import '../../src/random/sum_of_n_natural_numbers.dart';

void main() {
  test(
    "Sum of n natural numbers",
    () {
      expect(
        calculateSumOfNaturalNumbers(0),
        0,
      );
      expect(
        calculateSumOfNaturalNumbers(10),
        55,
      );
    },
  );
}
