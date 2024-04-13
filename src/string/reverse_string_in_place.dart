void main() {
  print(reverseStringInPlace("Hello, world!"));
}

String reverseStringInPlace(String input) {
  final List<String> chars = input.split("");
  int left = 0;
  int right = chars.length - 1;

  while (left < right) {
    final String temp = chars[left];
    chars[left] = chars[right];
    chars[right] = temp;
    left++;
    right--;
  }

  return chars.join("");
}
