import 'dart:math';

void main() {
  print(isNarcissisticNumber(9474));
}

bool isNarcissisticNumber(int num) {
  if (num < 0)
    return false;
  else if (num == 0) return true;
  int sum = 0;
  final int digitCount = num.toString().length;
  for (String char in num.toString().split("")) {
    sum += pow(int.parse(char), digitCount).toInt();
  }
  return sum == num;
}
