void main() {
  print(
    countCharacterOccurrence(
      "How do you count the occurrence of a given character in a string",
      "a",
    ),
  );
}

int countCharacterOccurrence(String input, String char) {
  int count = 0;
  char = char.toLowerCase();
  for (String currentChar in input.toLowerCase().split("")) {
    if (currentChar == char) {
      count++;
    }
  }
  return count;
}
