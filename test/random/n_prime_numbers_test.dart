import 'package:test/test.dart';

import '../../src/random/n_prime_numbers.dart';

void main() {
  test(
    "Generate prime numbers",
    () {
      final result = generatePrimeNumbers(10);
      expect(result, [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]);
    },
  );

  test(
    "Generate prime numbers with count 0",
    () {
      final result = generatePrimeNumbers(0);
      expect(result, []);
    },
  );

  test(
    "Generate prime numbers with count 1",
    () {
      final result = generatePrimeNumbers(1);
      expect(result, [2]);
    },
  );

  test("Test isPrime function", () {
    expect(isPrime(2), true);
    expect(isPrime(3), true);
    expect(isPrime(5), true);
    expect(isPrime(7), true);
    expect(isPrime(11), true);
    expect(isPrime(13), true);
    expect(isPrime(17), true);
    expect(isPrime(19), true);

    expect(isPrime(1), false);
    expect(isPrime(4), false);
    expect(isPrime(6), false);
    expect(isPrime(8), false);
    expect(isPrime(9), false);
    expect(isPrime(10), false);
    expect(isPrime(12), false);
    expect(isPrime(14), false);
    expect(isPrime(15), false);
  });
}
