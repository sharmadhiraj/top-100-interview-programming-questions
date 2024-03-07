void main() {
  print(countCharacterOccurrence("Dhiraj Sharma"));
}

Map<String, int> countCharacterOccurrence(String input) {
  final Map<String, int> count = {};
  for (int i = 0; i < input.length; i++) {
    count[input[i]] = (count[input[i]] ?? 0) + 1;
  }
  return count;
}
