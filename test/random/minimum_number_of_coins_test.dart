import 'package:test/test.dart';

import '../../src/random/minimum_number_of_coins.dart';

void main() {
  test(
    "Calculate minimum number of coins required for value",
    () {
      expect(calculateMinimumNumberOfCoins(435), 7);
      expect(calculateMinimumNumberOfCoins(70), 2);
      expect(calculateMinimumNumberOfCoins(1), 1);
      expect(calculateMinimumNumberOfCoins(0), 0);
      expect(calculateMinimumNumberOfCoins(-10), 0);
      expect(calculateMinimumNumberOfCoins(1234), 7);
      expect(calculateMinimumNumberOfCoins(999), 11);
      expect(calculateMinimumNumberOfCoins(678), 7);
      expect(calculateMinimumNumberOfCoins(37), 4);
      expect(calculateMinimumNumberOfCoins(10), 1);
    },
  );
}
