export { Bool (False, True)
       , and
       , FizzBuzz (Fizz, Buzz, FizzBuzz, Other)
       , fizzbuzz
       }

Bool ::= False | True

and : Bool -> Bool -> Bool
and := pattern {
        (True, True) => True;
        _            => False;
}

class Div t {
    (/) : t -> t -> t
    mod : t -> t -> t
}

-- could just define a type for div
-- but custom errors are nice
div := pattern {
    (Div::a,      0) => error!("divide by zero");
    (Div::a, Div::b) => a / b;
    _                => error!("operands must be instance of Div");
}

inputNot : Bool
inputNot := {
    println!("Hi, I'm a not operator.");
    input <- getln("A bool, please: ");
    case input {
        "True"  | "true"  | "#t" => False;
        "False" | "false" | "#f" => True;
    }
}

FizzBuzz ::= Fizz | Buzz | FizzBuzz | Other Int

instance Show FizzBuzz {
    show := pattern {
        Fizz     => "fizz";
        Buzz     => "buzz";
        FizzBuzz => "fizzbuzz";
        Other n  => show n;
    }
}

fizzbuzz : Int -> FizzBuzz
fizzbuzz := λn -> case (n % 3, n % 5) {
    (0, 0) => FizzBuzz;
    (0, _) => Fizz;
    (_, 0) => Buzz;
    _      => Other n;
}

-- the type "?" will make the compiler
-- print the inferred type for you.
-- kinda like type holes
name : ? --> Found type request, name : ()
name := {
    answer <- getln!("What is your name?\n");
    println!("Hi {}!", answer);
}

Maybe a ::= Nothing | Just a

delta : Int -> Maybe Int
delta := pattern {
    0 => Nothing;
    _ => Just  0; 
}

export AST { Statement !(ClassStatement)
           , TypeSignature
           , TypeConstructor
           }

Statement ::= TypeStatement [ TypeConstructor ]
  | FunctionsStatement TypeSignature Name (Maybe Arguments) Expression
  | ClassStatement Name Arguments [ TypeSignature ]

Name          *=  String
Arguments     *= [ Name ]
TypeSignature *= [ TypeConstructor ]

TypeConstructor ::= TypeConstructor Name (Maybe Arguments)

decode : Bλ -> Maybe Int
decode := pattern {
    Abs   (Abs    (Idx 0)) => Just 0
    App _ (Idx 1) (Idx 0)  => Just 1
    Abs                λ   => decode λ
    App _ (Idx 1)      r   => fmap(λn -> n+1, decode r)
                       _   => Nothing
}



