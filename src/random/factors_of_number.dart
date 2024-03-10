void main() {
  print(findFactorsOfNumber(60));
}

List<int> findFactorsOfNumber(int number) {
  final List<int> factors = [];
  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      factors.add(i);
    }
  }
  return factors;
}
