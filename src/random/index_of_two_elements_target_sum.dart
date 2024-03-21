void main() {
  print(
    findTwoSumIndices(
      [2, 7, 11, 15],
      13,
    ),
  );
}

List<int> findTwoSumIndices(List<int> nums, int target) {
  final Map<int, int> map = {};
  for (int i = 0; i < nums.length; i++) {
    final int complement = target - nums[i];
    if (map.containsKey(complement)) {
      return [map[complement]!, i];
    }
    map[nums[i]] = i;
  }
  return [];
}
