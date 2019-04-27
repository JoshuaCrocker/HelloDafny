method max(arr: array<int>) returns (result: int)
    requires arr.Length > 0
    ensures (forall k:int :: 0 <= k < arr.Length ==> result >= arr[k])
{
    
}

method TestBench()
{
    var ten := max(arr);
    assert ten == 10;
}
