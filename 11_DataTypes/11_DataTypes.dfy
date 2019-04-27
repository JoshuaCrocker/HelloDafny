class DataTypes
{
    var iSet1: set<int>;
    var iSet2 : set<int>;

    method SetDemo()
        modifies this;
    {
        iSet1 := {0, 2, 1, 4, 1};
        iSet2 := {0, 3, 4};

        print "iSet1: ", iSet1, " iSet2: ", iSet2, "\n";

        // Intersection (In both sets)
        print "iSet1 * iSet2 : ", iSet1 * iSet2, "\n" ;

        // Union (In at least one of the sets)
        print "iSet1 + iSet2: ", iSet1 + iSet2, "\n";

        // Difference (Remove from iSet1 anything in iSet2)
        print "iSet1 - iSet2: ", iSet1 - iSet2, "\n";

        print "\nSet Comprehension\n\n";
        var iSet3 := set x | x in {-2,-1,0,1,2} :: x * x;
        print "iSet3 := set x | x in {-2,-1,0,1,2} :: x * x is ", iSet3, "\n";

        print "{} < iSet1: ", {} < iSet1, "\n";
        print "iSet1 < iSet1: ", iSet1 < iSet1, "\n";
        print "iSet3 < iSet1: ", iSet3 < iSet1, "\n";
        print "iSet3 <= iSet1: ", iSet3 <= iSet1, "\n";

        var bigSet := {iSet1, iSet2};
        print "iSet1 in bigSet: ", iSet1 in bigSet, "\n";
        print "{2} in bigSet: ", {2} in bigSet, "\n";
        print "\n", bigSet, " has ", |bigSet|, " elements\n";

        var wordSet := {"cat", "lion"};
        print "{\"dog\", \"monkey\", \"cat\", \"mouse\"} - wordSet: ", 
        {"dog", "monkey", "cat", "mouse"} - wordSet, "\n";
    }
}

method Main()
{
   print "Sets\n\n";
   var c := new DataTypes;
   c.SetDemo();
}
