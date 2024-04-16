void main() {
  print(reverseString("Hello world!"));
}

String reverseString(String input) {
  if (input.length <= 1) {
    return input;
  }
  return "${reverseString(input.substring(1))}${input[0]}";
}
