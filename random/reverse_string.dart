void main() {
  print(reverseString("Hello World"));
}

String reverseString(String original) {
  if (original.isEmpty) return "";
  return reverseString(original.substring(1)) + original[0];
}
