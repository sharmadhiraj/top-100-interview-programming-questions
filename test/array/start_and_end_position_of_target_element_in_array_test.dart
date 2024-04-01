import 'package:test/test.dart';

import '../../src/array/start_and_end_position_of_target_element_in_array.dart';

void main() {
  test(
    "Find start and end positions of target element",
    () {
      expect(
        findStartAndEndPositionOfTargetElement([1, 2, 4, 5, 5, 6, 7, 9], 5),
        [3, 4],
      );
      expect(
        findStartAndEndPositionOfTargetElement(
            [1, 2, 4, 5, 5, 6, 7, 7, 7, 9], 7),
        [6, 8],
      );
      expect(
        findStartAndEndPositionOfTargetElement([1, 2, 4, 6, 7, 9], 5),
        [],
      );
      expect(
        findStartAndEndPositionOfTargetElement([], 5),
        [],
      );
      expect(
        findStartAndEndPositionOfTargetElement([5], 5),
        [0, 0],
      );
    },
  );
}
