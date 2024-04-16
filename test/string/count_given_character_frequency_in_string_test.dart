import 'package:test/test.dart';

import '../../src/string/count_given_character_frequency_in_string.dart';

void main() {
  test("Single occurrence of character", () {
    expect(
      countCharacterOccurrence("Hello world!", "o"),
      equals(2),
    );
  });

  test("No occurrence of character", () {
    expect(
      countCharacterOccurrence("Hello world!", "z"),
      equals(0),
    );
  });

  test("Case-insensitive counting", () {
    expect(
      countCharacterOccurrence("Hello world!", "L"),
      equals(3),
    );
  });

  test("Empty string", () {
    expect(
      countCharacterOccurrence("", "a"),
      equals(0),
    );
  });

  test("Empty character", () {
    expect(
      countCharacterOccurrence("Hello world!", ""),
      equals(0),
    );
  });
}
