import 'package:test/test.dart';

import '../../src/array/smallest_and_largest_element.dart';

void main() {
  test(
    "Find smallest and largest elements in array",
    () {
      expect(
        findSmallestAndLargestElement(
            [563, 546, 53, 78, 355, 34, 43, 766, 856, 43, 56, 345, 89]),
        equals([34, 856]),
      );
      expect(
        findSmallestAndLargestElement([1, 2, 3, 4, 5]),
        equals([1, 5]),
      );
      expect(
        findSmallestAndLargestElement([5, 4, 3, 2, 1]),
        equals([1, 5]),
      );
      expect(
        findSmallestAndLargestElement([1, 1, 1, 1, 1]),
        equals([1, 1]),
      );
      expect(
        findSmallestAndLargestElement([-1, -2, -3, -4, -5]),
        equals([-5, -1]),
      );
    },
  );
}
