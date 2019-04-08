method Abs(x: int) returns (y: int)
    ensures y >= 0
{
   if (x < 0)
   {
       return -x; 
   }
   else
   {
        return x;
   }
}

method TestBench()
{
    var ten := Abs(10);
    var minusFive := Abs(-5);

    assert 0 <= ten;
    assert 0 <= minusFive;
}
