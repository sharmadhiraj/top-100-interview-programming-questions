void main() {
  int x = 10;
  int y = 20;
  print("x = $x, y = $y");

  x = x + y;
  y = x - y;
  x = x - y;

  print("x = $x, y = $y");
}
