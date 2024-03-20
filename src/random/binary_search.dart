void main() {
  final List<int> myList = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];
  final int target = 13;
  final int index = binarySearch(myList, target);
  print("Element $target found at index $index in list ${myList}");
}

int binarySearch(List<int> sortedList, int target) {
  int left = 0;
  int right = sortedList.length - 1;

  while (left <= right) {
    int mid = left + ((right - left) ~/ 2);

    if (sortedList[mid] == target) {
      return mid;
    } else if (sortedList[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return -1;
}
