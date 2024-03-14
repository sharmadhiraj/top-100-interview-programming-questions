void main() {
  print(findPermutations("abc"));
}

List<String> findPermutations(String str) {
  if (str.isEmpty) {
    return [];
  } else if (str.length == 1) {
    return [str];
  }
  final List<String> permutations = [];
  for (int i = 0; i < str.length; i++) {
    final String currentChar = str[i];
    final String remainingChars = str.substring(0, i) + str.substring(i + 1);
    final List<String> perms = findPermutations(remainingChars);
    for (String perm in perms) {
      permutations.add(currentChar + perm);
    }
  }
  return permutations;
}
