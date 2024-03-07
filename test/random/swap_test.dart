import 'package:test/test.dart';

import '../../src/random/swap.dart';

void main() {
  test(
    "Test swap function",
    () {
      List<int> values = [10, 20];
      swap(values);
      expect(values, [20, 10]);
    },
  );
}
