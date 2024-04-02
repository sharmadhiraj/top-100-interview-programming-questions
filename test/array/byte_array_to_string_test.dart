import 'package:test/test.dart';

import '../../src/array/byte_array_to_string.dart';

void main() {
  test('Convert byte array to string', () {
    List<int> byteList1 = [72, 101, 108, 108, 111];
    expect(convertByteArrayToString(byteList1), equals('Hello'));

    List<int> byteList2 = [65, 66, 67, 68, 69];
    expect(convertByteArrayToString(byteList2), equals('ABCDE'));

    List<int> byteList4 = [];
    expect(convertByteArrayToString(byteList4), equals(''));

    List<int> byteList5 = [72];
    expect(convertByteArrayToString(byteList5), equals('H'));
  });
}
