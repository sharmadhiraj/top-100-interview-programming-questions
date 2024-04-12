void main() {
  print(
    isValidSudoku(
      [
        ["5", "3", ".", ".", "7", ".", ".", ".", "."],
        ["6", ".", ".", "1", "9", "5", ".", ".", "."],
        [".", "9", "8", ".", ".", ".", ".", "6", "."],
        ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
        ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
        ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
        [".", "6", ".", ".", ".", ".", "2", "8", "."],
        [".", ".", ".", "4", "1", "9", ".", ".", "5"],
        [".", ".", ".", ".", "8", ".", ".", "7", "9"]
      ],
    ),
  );
}

bool isValidSudoku(List<List<String>> board) {
  final List<Set<int>> rows = List.generate(9, (_) => {});
  final List<Set<int>> columns = List.generate(9, (_) => {});
  final List<Set<int>> squares = List.generate(9, (_) => {});

  for (int i = 0; i < board.length; i++) {
    for (int j = 0; j < board[i].length; j++) {
      if (board[i][j] == ".") {
        continue;
      }
      final int entry = int.parse(board[i][j]);
      final int squareId = (i ~/ 3) * 3 + (j ~/ 3);
      if (rows[i].contains(entry) ||
          columns[j].contains(entry) ||
          squares[squareId].contains(entry)) {
        return false;
      }
      rows[i].add(entry);
      columns[j].add(entry);
      squares[squareId].add(entry);
    }
  }
  return true;
}
