import 'dart:math';

void main() {
  print(findContiguousSubarrayWithLargestSum([-2, 1, -3, 4, -1, 2, 1, -5, 4]));
}

int findContiguousSubarrayWithLargestSum(List<int> nums) {
  int currentSum = nums.first;
  int maxSum = nums.first;
  for (int i = 1; i < nums.length; i++) {
    currentSum = max(currentSum + nums[i], nums[i]);
    maxSum = max(maxSum, currentSum);
  }
  return maxSum;
}
