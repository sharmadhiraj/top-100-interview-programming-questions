void main() {
  final List<int> nums = [1, 3, 4, 5, 7, 8, 89, 43, 56, 32, 76];
  print(nums);
  rotateArray(nums, 2);
  print(nums);
}

void rotateArray(List<int> nums, int rotation) {
  for (int i = 0; i < rotation; i++) {
    final int last = nums.last;
    for (int j = nums.length - 1; j > 0; j--) {
      nums[j] = nums[j - 1];
    }
    nums[0] = last;
  }
}
