class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode({required this.val, this.left, this.right});

  @override
  String toString() {
    return "TreeNode [val: $val, left: ${left?.val}, right: ${right?.val}]";
  }

  @override
  operator ==(o) =>
      o is TreeNode &&
      o.val == val &&
      o.left?.val == left?.val &&
      o.right?.val == right?.val;
}
