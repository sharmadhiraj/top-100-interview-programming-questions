import 'package:test/test.dart';

import '../../src/random/fibonacci_numbers.dart';

void main() {
  test(
    "Fibonacci numbers test",
    () {
      expect(
        generateFibonacciNumbers(10),
        [0, 1, 1, 2, 3, 5, 8, 13, 21, 34],
      );
    },
  );
}
