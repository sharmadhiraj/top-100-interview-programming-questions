void main() {
  print(calculateMinimumNumberOfCoins(435));
}

int calculateMinimumNumberOfCoins(int value) {
  if (value <= 0) return 0;
  final List<int> denominations = [1000, 500, 100, 50, 20, 10, 5, 2, 1];
  int coinCount = 0;
  for (int denomination in denominations) {
    while (denomination <= value) {
      value -= denomination;
      coinCount++;
    }
  }
  return coinCount;
}
