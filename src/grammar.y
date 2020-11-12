{
{-# LANGUAGE FlexibleInstances #-}
module Parser where
import Lexer
import Data.List
}

%name calc
%tokentype { Token }
%error { parseError }

%token 
    "->"        { TokenArrow       _  }
    "=>"        { TokenDoubleArrow _  }
    "<-"        { TokenLeftArrow   _  }
    "::="       { TokenData        _  }
    ":"         { TokenTypeSign    _  }
    ";"         { TokenSemi        _  }
    ","         { TokenComma       _  }
    ".."        { TokenDot         _  }
    str         { TokenString _ $$    }
    chr         { TokenChar   _ $$    }
    "="         { TokenAssign      _  }
    "("         { TokenLParen      _  }
    ")"         { TokenRParen      _  }
    "{"         { TokenLBracket    _  }
    "}"         { TokenRBracket    _  }
    "["         { TokenLList       _  }
    "]"         { TokenRList       _  }
    "<"         { BinOp _ "<"         }
    ">"         { BinOp _ ">"         }
--    "?"         { TokenQMark        }
    ident       { TokenIdent _ $$     }
    macro       { TokenMacroCall _ $$ }
    int         { TokenInt   _ $$     }
    type        { TokenType  _ $$     }
    hole        { TokenHole  _ $$     }
    case        { Builtin _ "case"    }
    if          { Builtin _ "if"      }
    else        { Builtin _ "else"    }
    for         { Builtin _ "for"     }
    in          { Builtin _ "in"      }
--    export      { Builtin "export"   }
--    instance    { Builtin "instance" }
--    class       { Builtin "class"    }
    binop       { BinOp _ $$          }

%right "->"
%right "<-"
%left binop

%%

Stms :: { Program }
     : Stms Stm     { $2 : $1 }
     | Stm          {  [ $1 ] }

Stm : type "::=" "{" TypeDef "}"               { TypeStm $1 []   (reverse $4) }
    | type "<" ident ">" "::=" "{" TypeDef "}" { TypeStm $1 [$3] (reverse $7) }
    | ident ":" Type                           { SignStm       $1 (reverse $3) }
    | ident ":" Types "{" Exps "}"             { FuncStm       $1 (reverse $5) [$3] }
    | ident ":" Type1 "{" Pattern "}"          { PatternStm $1    (reverse $3) (reverse $5) }
    | ident "=" Exp                            { FuncStm  $1 [$3] [] }
    | ident "=" Exp ":" Type                   { FuncStm  $1 [$3] (reverse $5) } -- spruce this up
    | ident "=" "{" Exps "}"                   { FuncStm  $1      (reverse $4)  [] } -- pull out the type
    | ident "=" "{" Exps "}" ":" Type          { FuncStm  $1      (reverse $4)  (reverse $7) }
--    | class type ident   "{" "}"     { Class               }
--    | export type        "{" "}"     { Export $2           }
--    | export             "{" "}"     { Export "Main"       }
--    | instance type type "{" "}"     { Instance            }
--    | Exp                            { Eval $2 }

Exp : "(" Exp ")"              {              $2 }
    | "(" ")"                  { VoidExp         }
    | Exp binop Exp            { OpExp  $2 $1 $3 }
    | ident "<-" Exp           { LetExp    $1 $3 }
    | ident                    { VarExp       $1 }
    | ident "->" Exp           { LambdaExp $1 $3 }
    | Const                    { ConstExp     $1 }
    | ident "(" Args ")"       { CallExp   $1 (reverse $3) }
    | macro "(" Args ")"       { MacroExp  $1 (reverse $3) }
    | type                     { TypeCon   $1 [] }
    | type "(" Args ")"        { TypeCon   $1 (reverse $3) }
    | case Exp "{" Case "}"    { CaseExp   $2 (reverse $4) }
    | hole                     { HoleExp      $1 }
    | "[" Args "]"             { ListExp (reverse $2) }
    |  Range                   { $1 }
    | "(" Args1 ")"            { TupleExp (reverse $2) }
    | if   Exp "{" Exps "}"    { IfExp   $2 (reverse $4) }
    | else     "{" Exps "}"    { ElseExp    (reverse $3) }
    | for ident in Exp "{" Exps "}" { ForExp $2 $4 (reverse $6) }

Range : "[" int ".." int "]" { RangeExp (Bound $2) (Bound $4)     1 }
      | "["     ".." int "]" { RangeExp (Bound  0) (Bound $3)     1 }
      | "[" int ".."     "]" { RangeExp (Bound $2)  Inf           2 }
      | "["     ".."     "]" { RangeExp  NInf       Inf           1 }
      | "[" int ".." int ")" { RangeExp (Bound $2) (Bound ($4-1)) 1 }
      | "["     ".." int ")" { RangeExp (Bound  0) (Bound ($3-1)) 1 }
--      | int "," int ".." int { RangeExp (Bound $1) (Bound $5) ($3 - $1) }
--      | int "," int ".."     { RangeExp (Bound $1)  Inf       ($3 - $1) }

Args : {- empty -}             { [    ] }
     | Exp                     { [ $1 ] }
     | Args "," Exp            { $3 : $1 }

Args1 : Exp   "," Exp            { [$1, $3] }
      | Args1 "," Exp            {  $3 : $1 } 

Case : Case1                   { [ $1 ] }
     | Case ";" Case1          { $3 : $1 }

Case1 : Exp "=>" Exp { ($1 , $3) }

Pattern : Pattern1             { [ $1 ] }
        | Pattern ";" Pattern1 { $3 : $1 }

Pattern1 : Args "=>" Exp          { (reverse $1 ,        [$3]) }
         | Args "=>" "{" Exps "}" { (reverse $1 , reverse $4 ) }

Const : int                 { Int32 $1 }
      | str                 { Str   $1 }
      | chr                 { Chr   $1 }

Exps : Exp                  { [ $1 ] }
     | Exps ";" Exp         { $3 : $1 }

Types : type                  { TypeN $1 [] }
      | type "<" TypeArgs ">" { TypeN $1 (reverse $3) } 
      | "(" ")"               { VoidType }
      | ident                 { TypeVar $1 }

TypeDef : TypeCons              { [ $1 ] }
        | TypeDef ";" TypeCons  { $3 : $1 }

TypeCons : type               { ($1, []) }
         | type "(" TypeArgs ")" { ($1, reverse $3) }

TypeArgs : Types               { [ $1 ] }
         | TypeArgs "," Types  { $3 : $1 }

Type : Types                 { [ $1 ] }
     | Type "->" Types       { $3 : $1 }  

Type1 : Type "->" Types      { $3 : $1 }

{
getWholeLine :: [Token] -> Int -> [Token]
getWholeLine tokens line = filter p tokens
     where p = (==) line . Lexer.getLNum . Lexer.tokenPosn

errorText :: [Token] -> String
errorText tokens = "\nparse error at " ++ 
     "line \x1b[0;32m" ++ show line ++ "\x1b[0m" ++
     ", column \x1b[0;32m" ++ show column ++ "\x1b[0m\n" ++
     linewidth ++ "|\n" ++
     show line ++ "|" ++ wholeLine ++ "\n" ++
     linewidth ++ "|" ++
     "\n\x1b[0;31m" ++ linewidth ++ " ^\x1b[0m"
          where pos       = Lexer.tokenPosn (head tokens)
                column    = Lexer.getCNum pos
                line      = Lexer.getLNum pos
                linewidth = replicate (length $ show line) ' '
                wholeLine = show $ getWholeLine tokens line

parseError :: [Token] -> a
parseError [    ] = errorWithoutStackTrace "parse error"
parseError tokens = errorWithoutStackTrace $ errorText tokens



type Program = [ Stm ]

instance {-# OVERLAPPING #-} Show Program where
    show = intercalate "\n" . map show

data Range = Bound Int | Inf | NInf deriving Show

data Types = VoidType
           | TypeN String [ Types ]
           | TypeVar String
           deriving Show

data Exp = VoidExp
         | MacroExp  Name [ Exp ]
         | VarExp    Name
         | LambdaExp Name Exp
         | LetExp    Name Exp
         | ConstExp  Const
         | OpExp     Name Exp Exp
         | CallExp   Name [ Exp ]
         | TypeCon   Name [ Exp ]
         | CaseExp   Exp  [ (Exp, Exp) ]
         | HoleExp   String
         | ListExp   [ Exp ]
         | RangeExp  Range Range Int
         | ConsExp   Exp Exp
         | TupleExp  [ Exp ]
         | IfExp     Exp [ Exp ]
         | ElseExp   [ Exp ]
         | ForExp    Name Exp [ Exp ]
         deriving Show

data Const = Int32 Int
           | Str   String
           | Chr   Char
           deriving Show

type TypeSign = [ Types ] 

data Stm = TypeStm Name [ Name ] [ (Name, [Types]) ]
         | SignStm Name TypeSign
         | FuncStm Name [ Exp ] TypeSign
         | PatternStm Name TypeSign [ ([ Exp ], [ Exp ]) ]
         | Class
         | Export String
         | Instance
         | Eval Exp
         deriving Show

type Name  = String

parse :: String -> IO ()
parse = print . reverse . calc . scanTokens 
}