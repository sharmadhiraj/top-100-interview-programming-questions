void main() {
  final List<int> values = [10, 20];
  print(values);
  swap(values);
  print(values);
}

void swap(List<int> values) {
  values[0] = values[0] + values[1];
  values[1] = values[0] - values[1];
  values[0] = values[0] - values[1];
}
