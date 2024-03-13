void main() {
  print(removeSpecialCharacters("hello_world123!@#"));
}

String removeSpecialCharacters(String input) {
  final StringBuffer stringBuffer = StringBuffer();
  for (String char in input.split("")) {
    if (char.compareTo("a") >= 0 && char.compareTo("z") <= 0) {
      stringBuffer.write(char);
    }
  }
  return stringBuffer.toString();
}
