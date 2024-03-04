import "dart:io";

void main() {
  final List<List<int>> resultMatrix = addMatrix([
    [1, 2],
    [13, 4]
  ], [
    [4, 5],
    [6, 7]
  ]);
  for (int i = 0; i < resultMatrix.length; i++) {
    for (int j = 0; j < resultMatrix[i].length; j++) {
      stdout.write(resultMatrix[i][j].toString() + " ");
    }
    print("");
  }
}

List<List<int>> addMatrix(List<List<int>> matrix1, List<List<int>> matrix2) {
  final int rows = matrix1.length;
  final int columns = matrix1.first.length;
  final List<List<int>> resultMatrix = [];
  for (int i = 0; i < rows; i++) {
    final List<int> resultMatrixRow = [];
    for (int j = 0; j < columns; j++) {
      resultMatrixRow.add(matrix1[i][j] + matrix2[i][j]);
    }
    resultMatrix.add(resultMatrixRow);
  }
  return resultMatrix;
}
