import 'package:test/test.dart';

import '../../src/random/check_narcissistic_number.dart';

void main() {
  test("Test isNarcissisticNumber function", () {
    expect(isNarcissisticNumber(9474), true);
    expect(isNarcissisticNumber(0), true);
    expect(isNarcissisticNumber(1), true);
    expect(isNarcissisticNumber(10), false);
    expect(isNarcissisticNumber(-9474), false);
  });
}
