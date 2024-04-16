void main() {
  print(findFirstNotRepeatedCharacter("abcdefghijab"));
}

String findFirstNotRepeatedCharacter(String input) {
  final Map<String, int> charCount = {};
  for (int i = 0; i < input.length; i++) {
    final String currentChar = input[i];
    charCount[currentChar] = (charCount[currentChar] ?? 0) + 1;
  }
  for (int i = 0; i < input.length; i++) {
    final String currentChar = input[i];
    if (charCount[currentChar] == 1) {
      return currentChar;
    }
  }
  return "";
}
