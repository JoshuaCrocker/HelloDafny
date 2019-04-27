// Write a method Max that takes two integer parameters 
// and returns their maximum. 
// Add appropriate annotations and make sure your code verifies.
method Max(a: int, b:int) returns (c: int)
    ensures a <= c
    ensures b <= c
{
    if (a > b)
    {
        return a;
    }
    
    return b;
}

method TestBench()
{
    var ten := Max(10, 5);
    assert ten == 10;
}
