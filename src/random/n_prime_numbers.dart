void main() {
  print(generatePrimeNumbers(50));
}

List<int> generatePrimeNumbers(int count) {
  final List<int> primeNumbers = [];
  int n = 2;
  while (primeNumbers.length < count) {
    if (isPrime(n)) {
      primeNumbers.add(n);
    }
    n++;
  }
  return primeNumbers;
}

bool isPrime(int n) {
  if (n < 2) return false;
  if (n == 2) return true;
  for (int i = 2; i < n; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}
