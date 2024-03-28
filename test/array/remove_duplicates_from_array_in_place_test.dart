import 'package:test/test.dart';

import '../../src/array/remove_duplicates_from_array_in_place.dart';

void main() {
  test(
    "Remove duplicates from array in place",
    () {
      final List<int> nums1 = [
        1,
        2,
        2,
        5,
        4,
        3,
        4,
        6,
        7,
        8,
        1,
        8,
        11,
        13,
        8,
        15,
        9,
        9
      ];
      removeDuplicatesFromArrayInPlace(nums1);
      expect(
        nums1,
        equals([1, 2, 0, 5, 4, 3, 0, 6, 7, 8, 0, 0, 11, 13, 0, 15, 9, 0]),
      );

      final List<int> nums2 = [1, 2, 3, 4, 5];
      removeDuplicatesFromArrayInPlace(nums2);
      expect(nums2, equals([1, 2, 3, 4, 5]));

      final List<int> nums3 = [1, 1, 1, 1, 1];
      removeDuplicatesFromArrayInPlace(nums3);
      expect(nums3, equals([1, 0, 0, 0, 0]));

      final List<int> nums4 = [5, 4, 3, 2, 1];
      removeDuplicatesFromArrayInPlace(nums4);
      expect(nums4, equals([5, 4, 3, 2, 1]));
    },
  );
}
