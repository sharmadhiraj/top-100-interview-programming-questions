void main() {
  print(findNearestSmallerNumbersOnLeftSideOfArray([1, 6, 4, 10, 2, 5, 13]));
}

List<int> findNearestSmallerNumbersOnLeftSideOfArray(List<int> nums) {
  final List<int> smallerNumbers = [];
  for (int i = 0; i < nums.length; i++) {
    for (int j = i - 1; j >= 0; j--) {
      if (nums[j] < nums[i]) {
        smallerNumbers.add(nums[j]);
        break;
      }
    }
  }
  return smallerNumbers;
}
