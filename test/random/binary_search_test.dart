import 'package:test/test.dart';

import '../../src/random/binary_search.dart';

void main() {
  test(
    "Find item index using Binary Search",
    () {
      expect(
        binarySearch([4, 6, 8, 11], 13),
        -1,
      );
      expect(
        binarySearch([1, 3, 5, 7, 9, 11, 13, 15, 17, 19], 13),
        6,
      );
    },
  );
}
