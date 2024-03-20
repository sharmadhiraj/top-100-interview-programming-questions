import 'package:test/test.dart';

import '../../src/random/remove_duplicates_from_array.dart';

void main() {
  test(
    "Remove duplicates from array",
    () {
      expect(
        removeDuplicatesFromArray([]),
        [],
      );
      expect(
        removeDuplicatesFromArray([1, 2, 5, 3, 4, 6, 7, 8, 8, 8, 8, 9, 9, 9]),
        [1, 2, 5, 3, 4, 6, 7, 8, 9],
      );
    },
  );
}
