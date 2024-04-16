void main() {
  print(stringOnlyContainsDigits("123 Hello world 123"));
  print(stringOnlyContainsDigits("34534634343543"));
}

bool stringOnlyContainsDigits(String input) {
  final String digits = "0123456789";
  for (String char in input.split("")) {
    if (!digits.contains(char)) {
      return false;
    }
  }
  return true;
}
