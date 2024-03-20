void main() {
  print(calculateSumOfNaturalNumbers(10));
}

int calculateSumOfNaturalNumbers(int n) {
  if (n <= 0) return 0;
  int sum = 0;
  for (int i = 0; i <= n; i++) {
    sum += i;
  }
  return sum;
}
