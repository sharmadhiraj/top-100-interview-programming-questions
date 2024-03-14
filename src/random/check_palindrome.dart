void main() {
  print(isPalindromeWithoutConvertingToString(1001));
  print(isPalindrome(1001));
}

bool isPalindromeWithoutConvertingToString(int num) {
  if (num < 0)
    return false;
  else if (num < 10) return true;
  final List<int> numList = [];
  while (num > 0) {
    numList.add(num % 10);
    num = num ~/ 10;
  }
  int left = 0;
  int right = numList.length - 1;
  while (left < right) {
    if (numList[left] != numList[right]) {
      return false;
    }
    left++;
    right--;
  }
  return true;
}

bool isPalindrome(int num) {
  if (num < 0)
    return false;
  else if (num < 10) return true;
  final String numString = num.toString();
  int left = 0;
  int right = numString.length - 1;

  while (left < right) {
    if (numString[left] != numString[right]) {
      return false;
    }
    left++;
    right--;
  }
  return true;
}
