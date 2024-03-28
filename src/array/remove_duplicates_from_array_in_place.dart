void main() {
  final List<int> nums = [
    1,
    2,
    2,
    5,
    4,
    3,
    4,
    6,
    7,
    8,
    1,
    8,
    11,
    13,
    8,
    15,
    9,
    9
  ];
  print(nums);
  removeDuplicatesFromArrayInPlace(nums);
  print(nums);
}

void removeDuplicatesFromArrayInPlace(List<int> nums) {
  final Set<int> uniqueNums = {};
  for (int i = 0; i < nums.length; i++) {
    if (uniqueNums.contains(nums[i])) {
      nums[i] = 0;
    } else {
      uniqueNums.add(nums[i]);
    }
  }
}
