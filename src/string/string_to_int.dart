void main() {
  print(convertStringToInt("011456010"));
}

int convertStringToInt(String input) {
  int result = 0;
  for (final int ch in input.codeUnits) {
    if (ch >= 48 && ch <= 57) {
      result = result * 10 + (ch - 48);
    }
  }
  return result;
}
