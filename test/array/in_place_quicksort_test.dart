import 'package:test/test.dart';

import '../../src/array/in_place_quicksort.dart';

void main() {
  test(
    "Sorts the array using Quicksort algorithm",
    () {
      List<int> arr1 = [10, 7, 8, 9, 1, 5];
      quickSort(arr1, 0, arr1.length - 1);
      expect(arr1, [1, 5, 7, 8, 9, 10]);

      List<int> arr2 = [3, 0, -1, 10, 2];
      quickSort(arr2, 0, arr2.length - 1);
      expect(arr2, [-1, 0, 2, 3, 10]);

      List<int> arr3 = [5, 4, 3, 2, 1];
      quickSort(arr3, 0, arr3.length - 1);
      expect(arr3, [1, 2, 3, 4, 5]);

      List<int> arr4 = [1, 1, 1, 1];
      quickSort(arr4, 0, arr4.length - 1);
      expect(arr4, [1, 1, 1, 1]);
    },
  );
}
