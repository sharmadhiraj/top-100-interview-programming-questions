import 'package:test/test.dart';

import '../../src/array/longest_consecutive_elements_subarray.dart';

void main() {
  test(
    "Find length of longest consecutive elements subarray",
    () {
      expect(
        findLengthOfLongestConsecutiveElementsSubarray(
            [1, 4, 5, 6, 9, 10, 11, 12, 13, 14, 18, 19]),
        6,
      );
      expect(
        findLengthOfLongestConsecutiveElementsSubarray([1, 2, 3, 4, 5]),
        5,
      );
      expect(
        findLengthOfLongestConsecutiveElementsSubarray([5, 4, 3, 2, 1]),
        1,
      );
      expect(
        findLengthOfLongestConsecutiveElementsSubarray([]),
        0,
      );
    },
  );
}
