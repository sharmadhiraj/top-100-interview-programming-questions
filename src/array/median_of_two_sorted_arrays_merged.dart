void main() {
  final List<int> mergedArray = mergeToSortedArrays(
    [2, 3, 5, 8],
    [10, 12, 14, 16, 18, 20],
  );
  print(mergedArray);
  print(calculateMedian(mergedArray));
}

List<int> mergeToSortedArrays(List<int> nums1, List<int> nums2) {
  final List<int> mergedArray = [];
  int i = 0;
  int j = 0;

  while (i < nums1.length && j < nums2.length) {
    if (nums1[i] < nums2[j]) {
      mergedArray.add(nums1[i]);
      i++;
    } else {
      mergedArray.add(nums2[j]);
      j++;
    }
  }
  while (i < nums1.length) {
    mergedArray.add(nums1[i]);
    i++;
  }
  while (j < nums2.length) {
    mergedArray.add(nums2[j]);
    j++;
  }
  return mergedArray;
}

double calculateMedian(List<int> nums) {
  if (nums.isEmpty) return 0;
  final int length = nums.length;
  final int center = length ~/ 2;
  if (length % 2 == 0) {
    return (nums[center] + nums[center - 1]) / 2;
  } else {
    return nums[center].toDouble();
  }
}
