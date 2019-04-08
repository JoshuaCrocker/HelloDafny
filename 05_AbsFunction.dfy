function abs(x: int): int
{
   if x < 0 then -x else x
}

method TestBench()
{
    assert abs(-3) == 3;
    assert abs(5) == 5;
}
