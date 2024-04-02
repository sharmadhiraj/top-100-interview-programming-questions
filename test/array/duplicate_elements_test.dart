import 'package:test/test.dart';

import '../../src/array/duplicate_elements.dart';

void main() {
  test("Find duplicate elements in the list", () {
    List<int> nums = [1, 4, 5, 7, 2, 4, 5, 6, 9, 3, 6];
    expect(findDuplicateElements(nums), [4, 5, 6]);
  });

  test("Find duplicate elements in an empty list", () {
    List<int> nums = [];
    expect(findDuplicateElements(nums), []);
  });

  test("Find duplicate elements when all elements are unique", () {
    List<int> nums = [1, 2, 3, 4, 5];
    expect(findDuplicateElements(nums), []);
  });
}
