import 'package:test/test.dart';

import '../../src/random/add_matrix.dart';

void main() {
  test(
    "Test addMatrix function",
    () {
      expect(
        addMatrix([
          [1, 2],
          [13, 4]
        ], [
          [4, 5],
          [6, 7]
        ]),
        [
          [5, 7],
          [19, 11]
        ],
      );

      expect(
        addMatrix([
          [1, -2],
          [-13, 4]
        ], [
          [4, 5],
          [6, -7]
        ]),
        [
          [5, 3],
          [-7, -3]
        ],
      );

      expect(
        addMatrix([], []),
        [],
      );

      expect(
        addMatrix([
          [1, 2, 3],
          [4, 5, 6],
          [7, 8, 9]
        ], [
          [9, 8, 7],
          [6, 5, 4],
          [3, 2, 1]
        ]),
        [
          [10, 10, 10],
          [10, 10, 10],
          [10, 10, 10]
        ],
      );

      expect(
        addMatrix([
          [1, 2, 3, 4],
          [5, 6, 7, 8],
          [9, 10, 11, 12],
          [13, 14, 15, 16]
        ], [
          [16, 15, 14, 13],
          [12, 11, 10, 9],
          [8, 7, 6, 5],
          [4, 3, 2, 1]
        ]),
        [
          [17, 17, 17, 17],
          [17, 17, 17, 17],
          [17, 17, 17, 17],
          [17, 17, 17, 17]
        ],
      );
    },
  );
}

void testAddMatrix(List<List<int>> matrix1, List<List<int>> matrix2,
    List<List<int>> expected) {
  List<List<int>> resultMatrix = addMatrix(matrix1, matrix2);
  print("Matrix 1: $matrix1");
  print("Matrix 2: $matrix2");
  print("Expected Result: $expected");
  print("Actual Result: $resultMatrix");
  assert(
    matrixEquals(resultMatrix, expected),
    "Test failed for matrices $matrix1 and $matrix2",
  );
}

bool matrixEquals(List<List<int>> matrix1, List<List<int>> matrix2) {
  if (matrix1.length != matrix2.length) {
    return false;
  }
  for (int i = 0; i < matrix1.length; i++) {
    if (matrix1[i].length != matrix2[i].length) {
      return false;
    }
    for (int j = 0; j < matrix1[i].length; j++) {
      if (matrix1[i][j] != matrix2[i][j]) {
        return false;
      }
    }
  }
  return true;
}
