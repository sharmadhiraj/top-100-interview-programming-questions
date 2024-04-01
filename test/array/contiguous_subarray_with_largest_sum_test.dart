import 'package:test/test.dart';

import '../../src/array/contiguous_subarray_with_largest_sum.dart';

void main() {
  test(
    "Find contiguous subarray with largest sum",
    () {
      expect(
        findContiguousSubarrayWithLargestSum([-2, 1, -3, 4, -1, 2, 1, -5, 4]),
        6,
      );
      expect(
        findContiguousSubarrayWithLargestSum([-1, -2, -3, -4, -5]),
        -1,
      );
      expect(
        findContiguousSubarrayWithLargestSum([1, 2, 3, 4, 5]),
        15,
      );
      expect(
        findContiguousSubarrayWithLargestSum([5]),
        5,
      );
      expect(
        findContiguousSubarrayWithLargestSum([5, -2, 3, -1, 2]),
        7,
      );
    },
  );
}
