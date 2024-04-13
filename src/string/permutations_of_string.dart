void main() {
  print(permutations("abc"));
}

List<String> permutations(String input) {
  if (input.length == 1) return [input];

  final List<String> result = [];
  for (int i = 0; i < input.length; i++) {
    final String currentChar = input[i];
    final String remainingChars =
        input.substring(0, i) + input.substring(i + 1);
    final List<String> perms = permutations(remainingChars);

    for (String perm in perms) {
      result.add(currentChar + perm);
    }
  }
  return result;
}
