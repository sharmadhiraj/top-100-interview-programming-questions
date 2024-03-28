void main() {
  print(
    findSmallestAndLargestElement(
      [563, 546, 53, 78, 355, 34, 43, 766, 856, 43, 56, 345, 89],
    ),
  );
}

List<int> findSmallestAndLargestElement(List<int> nums) {
  int smallest = nums.first;
  int largest = nums.first;

  for (int num in nums) {
    if (num < smallest) {
      smallest = num;
    }
    if (num > largest) {
      largest = num;
    }
  }
  return [smallest, largest];
}
