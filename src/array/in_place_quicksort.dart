void main() {
  List<int> arr = [10, 7, 8, 9, 1, 5];
  int n = arr.length;

  quickSort(arr, 0, n - 1);

  print("Sorted array: $arr");
}

void quickSort(List<int> arr, int low, int high) {
  if (low < high) {
    int partitionIndex = partition(arr, low, high);

    quickSort(arr, low, partitionIndex - 1);
    quickSort(arr, partitionIndex + 1, high);
  }
}

int partition(List<int> arr, int low, int high) {
  int pivot = arr[high];
  int i = low - 1;

  for (int j = low; j < high; j++) {
    if (arr[j] < pivot) {
      i++;
      swap(arr, i, j);
    }
  }

  swap(arr, i + 1, high);
  return i + 1;
}

void swap(List<int> arr, int i, int j) {
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}
