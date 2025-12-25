import "package:test/test.dart";

import "../../src/string/string_to_int.dart";

void main() {
  test(
    "Converts numeric string with leading zeros",
    () => expect(convertStringToInt("011456010"), equals(11456010)),
  );

  test(
    "Converts numeric string without leading zeros",
    () => expect(convertStringToInt("12345"), equals(12345)),
  );

  test(
    "Ignores non-digit characters",
    () => expect(convertStringToInt("12a34b5"), equals(12345)),
  );

  test(
    "Returns 0 for empty string",
    () => expect(convertStringToInt(""), equals(0)),
  );

  test("Returns 0 for string with only non-digit characters", () {
    expect(convertStringToInt("abc"), equals(0));
  });

  test(
    "Handles single-digit string",
    () => expect(convertStringToInt("7"), equals(7)),
  );

  test(
    "Handles string with spaces and digits",
    () => expect(convertStringToInt(" 1 2 3 "), equals(123)),
  );
}
