Bool ::= { False; True }

not : Bool -> Bool {
    False => True;
    True  => False
}

not : Bool -> Bool
not = x -> case x {
    False => True;
    True  => False
}

x = 2 : Int

double = x -> 2*x : Int -> Int

main : Void {
    a,b => double(x)
}

y : Int {
    10
}
