import 'package:test/test.dart';

import '../../src/random/index_of_two_elements_target_sum.dart';

void main() {
  test(
    "Find indices of two numbers with target sum",
    () {
      expect(
        findTwoSumIndices([2, 7, 11, 15], 9),
        [0, 1],
      );
      expect(
        findTwoSumIndices([3, 2, 4], 6),
        [1, 2],
      );
      expect(
        findTwoSumIndices([3, 3], 6),
        [0, 1],
      );
      expect(
        findTwoSumIndices([-1, -2, -3, -4, -5], -8),
        [2, 4],
      );
      expect(
        findTwoSumIndices([1, 2, 3, 4, 5], 10),
        [],
      );
    },
  );
}
