void main() {
  print(removeDuplicates([1, 1, 2, 2, 3, 4, 5]));
}

List<int> removeDuplicates(List<int> nums) {
  final List<int> unique = [];
  for (int num in nums) {
    if (!unique.contains(num)) {
      unique.add(num);
    }
  }
  return unique;
}
