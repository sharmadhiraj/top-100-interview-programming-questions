import 'package:test/test.dart';

import '../../src/random/average_of_array.dart';

void main() {
  test(
    "Count character occurrence in a string",
    () {
      expect(calculateAverageOfArray([]), equals(0));
      expect(
        calculateAverageOfArray([1, 4, 6, 7, 8, 9, 4, 12]),
        equals(6.375),
      );
      expect(
        calculateAverageOfArray([-1, -4, -6, -7, -8, -9, -4, -12]),
        equals(-6.375),
      );
      expect(
        calculateAverageOfArray([-1, 4, -6, 7, -8, 9, -4, 12]),
        equals(1.625),
      );
    },
  );
}
