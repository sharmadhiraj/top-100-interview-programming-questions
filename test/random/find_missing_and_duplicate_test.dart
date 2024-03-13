import 'package:test/test.dart';

import '../../src/random/find_missing_and_duplicate.dart';

void main() {
  test(
    "Test findMissingAndDuplicateNumber function",
    () {
      final Map<String, int> result = findMissingAndDuplicateNumber(
        [1, 6, 4, 5, 2, 2],
      );
      expect(result["missing"], 3);
      expect(result["duplicate"], 2);
    },
  );
}
