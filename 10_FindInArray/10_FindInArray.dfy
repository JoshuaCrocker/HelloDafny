method Find(a: array<int>, key: int) returns (index: int)
   ensures index == -1 || (0 <= index ==> index < a.Length && a[index] == key)
            
{
    index := 0;

    while (index < a.Length)
        invariant 0 <= index <= a.Length
        decreases a.Length - index
    {
        if (a[index] == key)
        {
            return index;
        }

        index := index + 1;
    }

    return -1;
}
