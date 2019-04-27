method Main ()  
{
    var s: seq<int>;

    s := [1, 2, 3, 4, 5];

    var seq2 := [1, 4, 9, 25];

    print "s == ", s ,"\n";
    print "s + seq2 == ", s + seq2,"\n";

    print "s[ |s|-1] == ", s[ |s|-1],"\n"; 
    print "s[ |s|-1..|s| ] == ", s[ |s|-1..|s| ],"\n"; 
    print "s[1..] == ", s[1..],"\n" ; 
    print "s[..|s|-1] == ", s[..|s|-1],"\n"; 
    
    print "s[0..] == ", s[0..],"\n";
    print "s[..|s| ] == ", s[..|s| ],"\n";
    print "s[0..|s| ] == ", s[0..|s| ],"\n";
    print "s[..] == ", s[..],"\n"; 

    print "s[0..1] == ", s[0..1],"\n";
    print "s[1..1] == ", s[1..1],"\n";   
}
