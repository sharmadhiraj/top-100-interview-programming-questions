void main() {
  print(removeDuplicatesFromArray([1, 2, 5, 3, 4, 6, 7, 8, 8, 8, 8, 9, 9, 9]));
}

List<int> removeDuplicatesFromArray(List<int> list) {
  return list.toSet().toList();
}
