void main() {
  print(getMatchingCharacters("Hello World", "abcdef"));
}

List<String> getMatchingCharacters(String string1, String string2) {
  final List<String> matchingCharacters = [];
  for (int i = 0; i < string2.length; i++) {
    if (string1.contains(string2[i])) {
      matchingCharacters.add(string2[i]);
    }
  }
  return matchingCharacters;
}
