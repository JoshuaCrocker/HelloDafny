method Abs(x: int) returns (y: int)
    ensures y >= 0
    requires x < 0
{
    return -x;
}

method TestBench()
{
    var minusFive := Abs(-5);
    assert 0 <= minusFive;
}
