import 'package:test/test.dart';

import '../../src/random/nearest_smaller_numbers_on_left_side_of_array.dart';

void main() {
  test(
    "Find nearest smaller numbers of left side of array",
    () {
      expect(
        findNearestSmallerNumbersOnLeftSideOfArray([1, 6, 4, 10, 2, 5, 13]),
        [1, 1, 4, 1, 2, 5],
      );
      expect(
        findNearestSmallerNumbersOnLeftSideOfArray([]),
        [],
      );
    },
  );
}
