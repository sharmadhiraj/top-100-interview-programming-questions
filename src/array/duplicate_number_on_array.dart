void main() {
  print(findTheDuplicateNumberOnArray([1, 6, 2, 9, 7, 4, 3, 4, 5]));
}

int findTheDuplicateNumberOnArray(List<int> nums) {
  final Set<int> uniqueNums = {};
  for (int num in nums) {
    if (uniqueNums.contains(num)) {
      return num;
    }
    uniqueNums.add(num);
  }
  return -1;
}
