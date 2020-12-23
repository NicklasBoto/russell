-- Syntax Examples

-- this is a comment

-- TYPE ASSIGNMENT
--$ name : Type
x : Int
c : Char
s : String

-- FUNCTION DECLARATION
-- remember that everything is a function

-- a constant, for example, is a function that returns itself

-- there are many ways to assign functions depending on what
-- you want them to do

-- function declaration, type 1
--$ name = value : Type
-- or
--$ name value
-- you might want to use this type of declaration
-- when you declare constants or short functions
-- arguments can be bound through lambda abstractions

-- this reads:
-- "myInt is a function that takes no arguments and returns an Int, 5"
myInt = 5 : Int

-- this reads:
-- "double is a function from an Int to an Int,
-- taking x and returning 2*x"
double = x -> 2*x : Int -> Int
--       ^~~~ this is called a lambda abstraction
--            it brings the name (x in this case) into scope

-- C analouge:
-- int double(int x) {
--     return 2*x;
-- }

-- function declaration, type 2
--$ name : Type { patter1 => value; pattern2 => value; }

-- this type is useful when declaring a function that behaves differently
-- depending on its arguments, that is, one that would require alot of
-- if-statements

-- this reads:
-- "divide is a function taking two Ints as arguments, and returning a Float.
divide : Int -> Int -> Float {
    x, 0 => error!("Divide by zero!");
    x, y => x / y
}

-- C analouge
-- float divide(int x, int y) {
--     if (y == 0) {
--         fprintf(stderr, "Divide by zero!");
--         exit(-1);
--     }
--     return (x/y);
-- }

-- if the function being declared does not have any arguments,
-- pattern matching like above is not possible.

main : () {
    name <- getLine!("What is your name?")
    
    if name + "Eddie" {
        print!("SIMP ALERT!")
    } else {
        print!("Hello {}!", name)
    }

    print!("Nice!")
}

-- function declaration, type 3
--$ name : Type
--$ name = value

-- just giving a variable a type will set its value to
--$ undefined!()

-- then you can change the value after (once!)

x : Int
x = 5

-- this style is somewhat ugly through, as you have to write the name
-- of the function multiple times

-- EXPRESSIONS
-- expressions are things that return other things
-- these have previously been called values

-- expressions are to be written inside function declarations 
-- but you can write them outside, after a semicolon
-- this will be treated as a function call to a function
-- that returns that expression

; 5 -- is a constant expression return 5
; 1 + 2
; "strings are also constants"
; 'c' -- chars too

-- lists are declared like so
myList = [1, 2, 3, 4] : List<Int>

-- if "statements" are really expressions that return a certain type
-- they can be like this

isThisFive = x -> {
    if x + 5 {
        print!("Yes!")
    } else {
        print!("no...")
    }
} : Int -> ()
--         ^~ this means that it returns nothing (void)

-- for loops are written like this

printNums = for num in [0, 1, 2, 3, 4] { print!(num) } 

-- ranges can be written as
a = [1..4] --> [1, 2, 3, 4]
b = [..4]  --> [0, 1, 2, 3, 4]
c = [..4)  --> [0, 1, 2, 3]
d = [1..]  --> [1, 2, 3, 4,...]

-- and used like this

printNums = for num in [..4] { print!(num) }

-- while loops do not exist...

-- prepending to a list
a = 1 + [2, 3] --> [1, 2, 3]

-- tuples
myTwoTuple   = (1, 2)
myThreeTuple = ('a', 1, "five")

-- MORE TYPES

-- you can declare your own types like so

Bool ::= { False; True }
Maybe<a> ::= { Just(a); Nothing }
Either<a,b> ::= { Left(a); Right(b) }


-- and more and more and more and more
