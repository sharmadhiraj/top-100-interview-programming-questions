import 'package:test/test.dart';

import '../../src/random/factors_of_number.dart';

void main() {
  test(
    "Factors of number test",
    () {
      expect(
        findFactorsOfNumber(60),
        [1, 2, 3, 4, 5, 6, 10, 12, 15, 20, 30, 60],
      );
    },
  );
}
