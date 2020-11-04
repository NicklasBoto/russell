{
module Parser where
import Lexer
import Data.List
}

%name calc
%tokentype { Token }
%error { parseError }

%token 
    "->"        { TokenArrow         }
    "=>"        { TokenDoubleArrow   }
    "<-"        { TokenLeftArrow     }
    "::="       { TokenData          }
    ":"         { TokenTypeSign      }
    ";"         { TokenSemi          }
    ","         { TokenComma         }
    str         { TokenString $$     }
    chr         { TokenChar   $$     }
    "="         { TokenAssign        }
    "("         { TokenLParen        }
    ")"         { TokenRParen        }
    "{"         { TokenLBracket      }
    "}"         { TokenRBracket      }
--    "?"         { TokenQMark         }
    ident       { TokenIdent $$      }
    int         { TokenInt   $$      }
    type        { TokenType  $$      }
    hole        { TokenHole  $$      }
    case        { Builtin "case"     }
--    export      { Builtin "export"   }
--    instance    { Builtin "instance" }
--    class       { Builtin "class"    }
    binop       { BinOp $$           }

%right "->"
%right "<-"
%left binop

%%

Stms :: { Program }
     : Stms Stm     { $2 : $1 }
     | Stm          {  [ $1 ] }

Stm : type "::=" "{" TypeDef "}"      { TypeStm       $1 $4 }
    | ident ":" Type                  { SignStm       $1 $3 }
    | ident ":" Type "{" Pattern "}"  { PatternStm $1 $3 $5 }
    | ident "=" Exp                   { FuncStm  $1 [$3] [] }
    | ident "=" Exp ":" Type          { FuncStm  $1 [$3] $5 } -- spruce this up
    | ident "=" "{" Exps "}"          { FuncStm  $1  $4  [] } -- pull out the type
    | ident "=" "{" Exps "}" ":" Type { FuncStm  $1  $4  $7 }
--    | class type ident   "{" "}"     { Class               }
--    | export type        "{" "}"     { Export $2           }
--    | export             "{" "}"     { Export "Main"       }
--    | instance type type "{" "}"     { Instance            }
--    | Exp                             { Eval $1 }

Exp : "(" Exp ")"              {              $2 }
    | Exp binop Exp            { OpExp  $2 $1 $3 }
    | ident "<-" Exp           { LetExp    $1 $3 }
    | ident                    { VarExp       $1 }
    | ident "->" Exp           { LambdaExp $1 $3 }
    | Const                    { ConstExp     $1 }
    | ident "(" Args ")"       { CallExp   $1 $3 }
    | type                     { TypeCon   $1 [] }
    | type "(" Args ")"        { TypeCon   $1 $3 }
    | case Exp "{" Case "}"    { CaseExp   $2 $4 }
    | hole                     { HoleExp      $1 }

Args : {- empty -}             { [    ] }
     | Exp                     { [ $1 ] }
     | Args "," Exp            { $3 : $1 }

Case : Case1                   { [ $1 ] }
     | Case ";" Case1          { $3 : $1 }

Case1 : Exp "=>" Exp { ($1 , $3) }

Pattern : Pattern1             { [ $1 ] }
        | Pattern ";" Pattern1 { $3 : $1 }

Pattern1 : Exp "=>" Exp      { ($1 , $3) }

Const : int                 { Int32 $1 }
      | str                 { Str   $1 }
      | chr                 { Chr   $1 }

Exps : Exp                  { [ $1 ] }
     | Exps ";" Exp         { $3 : $1 }

TypeDef : type              { [ $1 ] }
        | TypeDef ";" type  { $3 : $1 }

Type : type                 { [ $1 ] }
     | Type "->" type       { $3 : $1 }  

{
-- TODO Maybe make this prettier
-- monadic parser please
parseError :: [Token] -> a
parseError ts = error $ "Parse error\n" ++ intercalate "\n" (map show ts)

type Program = [ Stm ]

data Exp = PatternExp [ (Const, Exp) ]
         | VarExp Name
         | LambdaExp Name Exp
         | LetExp Name Exp
         | ConstExp Const
         | OpExp Name Exp Exp
         | CallExp Name [ Exp ]
         | TypeCon Name [ Exp ]
         | CaseExp Exp  [ (Exp, Exp) ]
         | HoleExp String
         deriving Show

data Const = Int32 Int
           | Str   String
           | Chr   Char
           deriving Show

type TypeSign = [ Name ] 

data Stm = TypeStm Name TypeSign
         | SignStm Name TypeSign
         | FuncStm Name [ Exp ] TypeSign
         | PatternStm Name TypeSign [ (Exp,Exp) ]
         | Class
         | Export String
         | Instance
         | Eval Exp
         deriving Show

type Name  = String

parse = print . reverse . calc . scanTokens
}
