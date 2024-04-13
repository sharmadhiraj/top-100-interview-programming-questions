void main() {
  print(areAnagrams("taste", "state"));
}

bool areAnagrams(String str1, String str2) {
  final List<String> str1Chars =
      str1.replaceAll(" ", "").toLowerCase().split("");
  final List<String> str2Chars =
      str2.replaceAll(" ", "").toLowerCase().split("");
  if (str1Chars.length != str2Chars.length) {
    return false;
  }
  str1Chars.sort();
  str2Chars.sort();
  for (int i = 0; i < str1Chars.length; i++) {
    if (str1Chars[i] != str2Chars[i]) {
      return false;
    }
  }
  return true;
}
