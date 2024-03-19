import 'package:test/test.dart';

import '../../src/random/check_leap_year.dart';

void main() {
  test("Leap year test", () {
    expect(isLeapYear(2024), equals(true));
    expect(isLeapYear(1900), equals(false));
    expect(isLeapYear(2000), equals(true));
    expect(isLeapYear(2021), equals(false));
    expect(isLeapYear(2023), equals(false));
  });
}
