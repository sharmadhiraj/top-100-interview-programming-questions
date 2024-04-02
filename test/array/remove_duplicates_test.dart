import 'package:test/test.dart';

import '../../src/array/remove_duplicates.dart';

void main() {
  test(
    "Remove Duplicates",
    () {
      final List<int> nums1 = [1, 1, 2, 2, 3, 4, 5];
      expect(removeDuplicates(nums1), equals([1, 2, 3, 4, 5]));

      final List<int> nums2 = [1, 2, 3, 4, 5];
      expect(removeDuplicates(nums2), equals([1, 2, 3, 4, 5]));

      final List<int> nums3 = [];
      expect(removeDuplicates(nums3), equals([]));

      final List<int> nums4 = [1, 1, 1, 1, 1, 1];
      expect(removeDuplicates(nums4), equals([1]));

      final List<int> nums5 = [2, 2, 2, 2, 2, 2];
      expect(removeDuplicates(nums5), equals([2]));
    },
  );
}
