void main() {
  print(findDuplicateElements([1, 4, 5, 7, 2, 4, 5, 6, 9, 3, 6]));
}

List<int> findDuplicateElements(List<int> nums) {
  final Set<int> duplicateElements = {};
  final Set<int> uniqueElements = {};
  for (int num in nums) {
    if (uniqueElements.contains(num)) {
      duplicateElements.add(num);
    } else {
      uniqueElements.add(num);
    }
  }
  return duplicateElements.toList();
}
