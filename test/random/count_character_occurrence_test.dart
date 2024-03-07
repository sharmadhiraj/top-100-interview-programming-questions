import 'package:test/test.dart';

import '../../src/random/count_character_occurrence.dart';

void main() {
  test(
    "Count character occurrence in a string",
    () {
      final result = countCharacterOccurrence("Dhiraj Sharma");
      expect(result["D"], 1);
      expect(result["h"], 2);
      expect(result["i"], 1);
      expect(result["r"], 2);
      expect(result["a"], 3);
      expect(result["j"], 1);
      expect(result[" "], 1);
      expect(result["S"], 1);
      expect(result["m"], 1);
    },
  );

  test(
    "Empty string",
    () {
      final result = countCharacterOccurrence("");
      expect(result.isEmpty, true);
    },
  );

  test(
    "String with only one character",
    () {
      final result = countCharacterOccurrence("a");
      expect(result["a"], 1);
    },
  );

  test(
    "String with all characters same",
    () {
      final result = countCharacterOccurrence("AAAAA");
      expect(result["A"], 5);
    },
  );

  test(
    "String with special characters",
    () {
      final result = countCharacterOccurrence("!@#\$%^&*()");
      expect(result["!"], 1);
      expect(result["@"], 1);
      expect(result["#"], 1);
      expect(result["\$"], 1);
      expect(result["%"], 1);
      expect(result["^"], 1);
      expect(result["&"], 1);
      expect(result["*"], 1);
      expect(result["("], 1);
      expect(result[")"], 1);
    },
  );
}
