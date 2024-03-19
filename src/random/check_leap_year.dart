void main() {
  print("2024 is leap year : ${isLeapYear(2024)}");
}

bool isLeapYear(int year) {
  return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
}
