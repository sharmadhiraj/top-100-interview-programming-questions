void main() {
  final List<int> nums = [1, 3, 5, 6, 79, 32, 13, 56, 8, 54, 23, 22];
  print(nums);
  reverseArrayInPlace(nums);
  print(nums);
}

void reverseArrayInPlace(List<int> nums) {
  int left = 0;
  int right = nums.length - 1;
  while (left < right) {
    final int temp = nums[right];
    nums[right] = nums[left];
    nums[left] = temp;
    left++;
    right--;
  }
}
