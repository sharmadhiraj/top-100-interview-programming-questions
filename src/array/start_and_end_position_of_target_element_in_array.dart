void main() {
  print(findStartAndEndPositionOfTargetElement([1, 2, 4, 5, 5, 6, 7, 9], 5));
}

List<int> findStartAndEndPositionOfTargetElement(List<int> nums, int target) {
  List<int> positions = [];
  bool foundStart = false;

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == target && !foundStart) {
      positions.add(i);
      foundStart = true;
    } else if (nums[i] != target && foundStart) {
      positions.add(i - 1);
      return positions;
    }
  }

  if (foundStart) {
    positions.add(nums.length - 1);
  }
  return positions;
}
