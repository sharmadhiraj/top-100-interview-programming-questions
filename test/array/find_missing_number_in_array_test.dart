import 'package:test/test.dart';

import '../../src/array/find_missing_number_in_array.dart';

void main() {
  test(
    "Find missing number in array",
    () {
      expect(
        findMissingNumberInArray([1, 4, 3, 5, 7, 9, 8, 6]),
        equals(2),
      );
      expect(
        findMissingNumberInArray([2, 1, 3, 5, 6, 7, 8, 9]),
        equals(4),
      );
      expect(
        findMissingNumberInArray([1, 2, 3, 4, 5, 6, 8, 9]),
        equals(7),
      );
      expect(
        findMissingNumberInArray([1, 2, 3, 4, 5, 6, 8]),
        equals(7),
      );
      expect(
        findMissingNumberInArray([2, 3, 4, 5, 6, 7, 8, 9]),
        equals(1),
      );
      expect(
        findMissingNumberInArray([1, 3, 4, 5, 6, 7, 8, 9]),
        equals(2),
      );
    },
  );
}
