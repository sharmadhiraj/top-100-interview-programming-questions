import 'package:test/test.dart';

import '../../src/array/median_of_two_sorted_arrays_merged.dart';

void main() {
  test(
    "Both arrays are non-empty and have equal lengths",
    () {
      final List<int> mergedArray1 = mergeToSortedArrays(
        [2, 3, 5, 8],
        [10, 12, 14, 16, 18, 20],
      );
      expect(mergedArray1, [2, 3, 5, 8, 10, 12, 14, 16, 18, 20]);
      expect(calculateMedian(mergedArray1), equals(11));
    },
  );

  test(
    "One array is empty and the other is non-empty",
    () {
      final List<int> mergedArray2 = mergeToSortedArrays([], [1, 2, 3, 4, 5]);
      expect(mergedArray2, [1, 2, 3, 4, 5]);
      expect(calculateMedian(mergedArray2), equals(3));
    },
  );

  test(
    "Both arrays are empty",
    () {
      final List<int> mergedArray3 = mergeToSortedArrays([], []);
      expect(mergedArray3, isEmpty);
      expect(calculateMedian(mergedArray3), equals(0));
    },
  );

  test(
    "One array has one element and the other is empty",
    () {
      final List<int> mergedArray4 = mergeToSortedArrays([5], []);
      expect(mergedArray4, [5]);
      expect(calculateMedian(mergedArray4), equals(5));
    },
  );

  test(
    "One array has one element greater than the median and the other has one element less than the median",
    () {
      final List<int> mergedArray5 = mergeToSortedArrays([10], [5]);
      expect(mergedArray5, [5, 10]);
      expect(calculateMedian(mergedArray5), equals(7.5));
    },
  );
}
