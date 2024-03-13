void main() {
  print(findMissingAndDuplicateNumber([1, 6, 4, 5, 2, 2]));
}

Map<String, int> findMissingAndDuplicateNumber(List<int> input) {
  final Map<String, int> result = {};
  int min = input.first;
  int max = input.first;

  for (int n in input) {
    if (n < min) {
      min = n;
    }
    if (n > max) {
      max = n;
    }
  }

  for (int i = min; i <= max; i++) {
    if (!input.remove(i)) {
      result["missing"] = i;
    }
  }
  result["duplicate"] = input.first;

  return result;
}
