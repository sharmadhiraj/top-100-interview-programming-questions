void main() {
  final List<int> numbers = [1, 45, 67, 34, 56, 2, 5, 14, 54, 67];
  print(findSecondLargestElement(numbers));
}

int findSecondLargestElement(List<int> numbers) {
  if (numbers.isEmpty) return 0;
  int largestElement = numbers.first;
  int secondLargestElement = numbers.first;
  for (int i = 0; i < numbers.length; i++) {
    final int currentNumber = numbers[i];
    if (largestElement < currentNumber) {
      secondLargestElement = largestElement;
      largestElement = currentNumber;
    } else if (secondLargestElement < currentNumber &&
        currentNumber != largestElement) {
      secondLargestElement = currentNumber;
    }
  }
  return secondLargestElement;
}
