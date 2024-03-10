void main() {
  print(generateFibonacciNumbers(10));
}

List<int> generateFibonacciNumbers(int n) {
  if (n < 1) return [];
  final List<int> numbers = [];
  int num1 = 0;
  int num2 = 1;
  for (int i = 0; i < n; i++) {
    numbers.add(num1);
    int num = num1 + num2;
    num1 = num2;
    num2 = num;
  }
  return numbers;
}
