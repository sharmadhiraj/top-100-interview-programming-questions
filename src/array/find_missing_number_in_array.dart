void main() {
  print(findMissingNumberInArray([1, 4, 3, 5, 7, 9, 8, 6]));
}

int findMissingNumberInArray(List<int> nums) {
  int maximumNumber = nums.first;
  int actualSum = 0;
  for (int num in nums) {
    actualSum += num;
    if (num > maximumNumber) {
      maximumNumber = num;
    }
  }
  final int expectedSum = maximumNumber * (maximumNumber + 1) ~/ 2;
  return expectedSum - actualSum;
}
