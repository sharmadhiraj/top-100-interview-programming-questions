import 'package:test/test.dart';

import '../../src/array/search_for_target_value_in_rotated_array.dart';

void main() {
  test(
    "Search for target value in rotated array",
    () {
      expect(
        searchForTargetValueInRotatedArray([4, 5, 6, 7, 0, 1, 2], 1),
        equals(5),
      );
      expect(
        searchForTargetValueInRotatedArray([4, 5, 6, 7, 0, 1, 2], 4),
        equals(0),
      );
      expect(
        searchForTargetValueInRotatedArray([4, 5, 6, 7, 0, 1, 2], 6),
        equals(2),
      );
      expect(
        searchForTargetValueInRotatedArray([4, 5, 6, 7, 0, 1, 2], 0),
        equals(4),
      );
      expect(
        searchForTargetValueInRotatedArray([4, 5, 6, 7, 0, 1, 2], 8),
        equals(-1),
      );
    },
  );
}
