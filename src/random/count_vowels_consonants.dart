void main() {
  print(countVowelsAndConsonants("Hello World"));
}

Map<String, int> countVowelsAndConsonants(String input) {
  int vowelsCount = 0;
  int consonantsCount = 0;

  final Set<String> vowels = {"a", "e", "i", "o", "u"};
  final Set<String> consonants = {
    "b",
    "c",
    "d",
    "f",
    "g",
    "h",
    "j",
    "k",
    "l",
    "m",
    "n",
    "p",
    "q",
    "r",
    "s",
    "t",
    "v",
    "w",
    "x",
    "y",
    "z"
  };

  input = input.toLowerCase();
  for (int i = 0; i < input.length; i++) {
    if (vowels.contains(input[i])) {
      vowelsCount++;
    } else if (consonants.contains(input[i])) {
      consonantsCount++;
    }
  }

  return {
    "vowels": vowelsCount,
    "consonants": consonantsCount,
  };
}
