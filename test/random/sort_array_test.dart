import 'package:test/test.dart';

import '../../src/random/sort_array.dart';

void main() {
  test(
    "Test bubble sort with positive numbers",
    () {
      List<int> numbers = [64, 34, 25, 12, 22, 11, 90];
      bubbleSort(numbers);
      expect(numbers, [11, 12, 22, 25, 34, 64, 90]);
    },
  );

  test(
    "Test bubble sort with negative numbers",
    () {
      List<int> numbers = [-64, -34, -25, -12, -22, -11, -90];
      bubbleSort(numbers);
      expect(numbers, [-90, -64, -34, -25, -22, -12, -11]);
    },
  );

  test(
    "Test bubble sort with mixed positive and negative numbers",
    () {
      List<int> numbers = [64, -34, 25, -12, 22, -11, 90];
      bubbleSort(numbers);
      expect(numbers, [-34, -12, -11, 22, 25, 64, 90]);
    },
  );

  test(
    "Test bubble sort with repeated numbers",
    () {
      List<int> numbers = [5, 5, 5, 5, 5];
      bubbleSort(numbers);
      expect(numbers, [5, 5, 5, 5, 5]);
    },
  );

  test(
    "Test bubble sort with empty list",
    () {
      List<int> numbers = [];
      bubbleSort(numbers);
      expect(numbers, []);
    },
  );

  test(
    "Test bubble sort with single element list",
    () {
      List<int> numbers = [5];
      bubbleSort(numbers);
      expect(numbers, [5]);
    },
  );
}
