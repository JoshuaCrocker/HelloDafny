function method max(a: int, b: int): int 
{
    if a > b then a else b
}

method TestBench() {
  assert max(2, 4) == 4;
  assert max(6, 3) == 6;
  assert max(4, 4) == 4;

  var top := max(2, 4);
  assert top == 4;
}
