void main() {
  print(convertByteArrayToString([72, 101, 108, 108, 111]));
}

String convertByteArrayToString(List<int> byteList) {
  return String.fromCharCodes(byteList);
}
