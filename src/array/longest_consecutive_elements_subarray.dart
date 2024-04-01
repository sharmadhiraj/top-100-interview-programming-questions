import 'dart:math';

void main() {
  print(
    findLengthOfLongestConsecutiveElementsSubarray(
      [1, 4, 5, 6, 9, 10, 11, 12, 13, 14, 18, 19],
    ),
  );
}

int findLengthOfLongestConsecutiveElementsSubarray(List<int> nums) {
  if (nums.isEmpty) return 0;
  int maxLength = 0;
  int left = 0;
  int right = 1;
  while (right < nums.length) {
    if ((nums[right - 1] + 1) != nums[right]) {
      left = right;
    }
    right++;
    maxLength = max(maxLength, right - left);
  }
  return maxLength;
}
