import 'package:test/test.dart';

import '../../src/array/reverse_array_in_place.dart';

void main() {
  test(
    "Reverse Array In Place",
    () {
      final List<int> nums1 = [1, 2, 3, 4, 5];
      reverseArrayInPlace(nums1);
      expect(nums1, equals([5, 4, 3, 2, 1]));

      final List<int> nums2 = [10, 20, 30, 40];
      reverseArrayInPlace(nums2);
      expect(nums2, equals([40, 30, 20, 10]));

      final List<int> nums3 = [100];
      reverseArrayInPlace(nums3);
      expect(nums3, equals([100]));

      final List<int> nums4 = [];
      reverseArrayInPlace(nums4);
      expect(nums4, equals([]));

      final List<int> nums5 = [1, 2, 3, 4, 5, 6, 7];
      reverseArrayInPlace(nums5);
      expect(nums5, equals([7, 6, 5, 4, 3, 2, 1]));
    },
  );
}
