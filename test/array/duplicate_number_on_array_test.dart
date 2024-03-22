import 'package:test/test.dart';

import '../../src/array/duplicate_number_on_array.dart';

void main() {
  test(
    "Find the duplicate number in array",
    () {
      expect(
        findTheDuplicateNumberOnArray([1, 6, 2, 9, 7, 4, 3, 4, 5]),
        equals(4),
      );
      expect(
        findTheDuplicateNumberOnArray([2, 3, 4, 5, 5, 6, 7, 8, 9]),
        equals(5),
      );
      expect(
        findTheDuplicateNumberOnArray([1, 1, 2, 3, 4, 5, 6, 7, 8]),
        equals(1),
      );
      expect(
        findTheDuplicateNumberOnArray([1, 2, 3, 4, 5, 6, 7, 8, 8]),
        equals(8),
      );
      expect(
        findTheDuplicateNumberOnArray([2, 3, 4, 5, 6, 7, 8, 9, 9]),
        equals(9),
      );
      expect(
        findTheDuplicateNumberOnArray([2, 3, 4, 5, 6, 7, 8]),
        equals(-1),
      );
    },
  );
}
