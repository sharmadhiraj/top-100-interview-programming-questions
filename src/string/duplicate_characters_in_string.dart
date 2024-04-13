void main() {
  print(findDuplicateCharacters("Hello World"));
}

List<String> findDuplicateCharacters(String input) {
  final Set<String> trackedChars = {};
  final Set<String> duplicateChars = {};

  for (String char in input.toLowerCase().split("")) {
    if (trackedChars.contains(char)) {
      duplicateChars.add(char);
    } else {
      trackedChars.add(char);
    }
  }

  return duplicateChars.toList();
}
