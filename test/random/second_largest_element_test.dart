import 'package:test/test.dart';

import '../../src/random/second_largest_element.dart';

void main() {
  test(
    "Test with positive numbers",
    () {
      final List<int> numbers = [1, 45, 67, 34, 56, 2, 5, 14, 54, 67];
      expect(findSecondLargestElement(numbers), 56);
    },
  );

  test(
    "Test with negative numbers",
    () {
      final List<int> numbers = [-10, -5, -20, -30, -15];
      expect(findSecondLargestElement(numbers), -10);
    },
  );

  test(
    "Test with repeated numbers",
    () {
      final List<int> numbers = [5, 5, 5, 5, 5];
      expect(findSecondLargestElement(numbers), 5);
    },
  );

  test(
    "Test with empty list",
    () {
      final List<int> numbers = [];
      expect(findSecondLargestElement(numbers), 0);
    },
  );

  test(
    "Test with single element list",
    () {
      final List<int> numbers = [5];
      expect(findSecondLargestElement(numbers), 5);
    },
  );
}
