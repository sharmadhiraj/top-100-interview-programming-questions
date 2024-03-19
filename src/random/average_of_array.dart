void main() {
  print(calculateAverageOfArray([1, 4, 6, 7, 8, 9, 4, 12]));
}

double calculateAverageOfArray(List<int> input) {
  if (input.isEmpty) return 0;
  int sum = 0;
  for (int i in input) {
    sum += i;
  }
  return sum / input.length;
}
