import 'package:test/test.dart';

import '../../src/array/rotate_array.dart';

void main() {
  test("Rotate array by 2 positions", () {
    List<int> nums = [1, 3, 4, 5, 7, 8, 89, 43, 56, 32, 76];
    rotateArray(nums, 2);
    expect(nums, [32, 76, 1, 3, 4, 5, 7, 8, 89, 43, 56]);
  });

  test("Rotate array by 4 positions", () {
    List<int> nums = [1, 3, 4, 5, 7, 8, 89, 43, 56, 32, 76];
    rotateArray(nums, 4);
    expect(nums, [43, 56, 32, 76, 1, 3, 4, 5, 7, 8, 89]);
  });

  test("Rotate array by 1 position", () {
    List<int> nums = [1, 3, 4, 5, 7, 8, 89, 43, 56, 32, 76];
    rotateArray(nums, 1);
    expect(nums, [76, 1, 3, 4, 5, 7, 8, 89, 43, 56, 32]);
  });
}
