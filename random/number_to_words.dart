void main() {
  print(numberToWords(-123456789));
}

String numberToWords(int number) {
  if (number == 0) {
    return "zero";
  } else if (number < 0) {
    return "Negative number not supported!";
  }

  List<String> unitsMap = [
    "",
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine"
  ];
  List<String> teensMap = [
    "ten",
    "eleven",
    "twelve",
    "thirteen",
    "fourteen",
    "fifteen",
    "sixteen",
    "seventeen",
    "eighteen",
    "nineteen"
  ];
  List<String> tensMap = [
    "",
    "",
    "twenty",
    "thirty",
    "forty",
    "fifty",
    "sixty",
    "seventy",
    "eighty",
    "ninety"
  ];
  List<String> scale = ["", "thousand", "million", "billion"];

  String words = '';

  int scaleIndex = 0;

  while (number > 0) {
    int hundred = number % 1000;
    if (hundred != 0) {
      String hundredStr = '';

      if (hundred >= 100) {
        hundredStr += '${unitsMap[hundred ~/ 100]} hundred ';
        hundred %= 100;
      }

      if (hundred >= 10 && hundred <= 19) {
        hundredStr += '${teensMap[hundred - 10]}';
      } else {
        if (hundred >= 20) {
          hundredStr += '${tensMap[hundred ~/ 10]}';
          if (hundred % 10 != 0) {
            hundredStr += '-';
          }
        }
        if (hundred % 10 != 0) {
          hundredStr += '${unitsMap[hundred % 10]}';
        }
      }

      words = '$hundredStr ${scale[scaleIndex]} $words';
    }

    number ~/= 1000;
    scaleIndex++;
  }

  return words.trim();
}
