{
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
    str         { TokenString _ $$    }
    chr         { TokenChar   _ $$    }
    "="         { TokenAssign      _  }
    "("         { TokenLParen      _  }
    ")"         { TokenRParen      _  }
    "{"         { TokenLBracket    _  }
    "}"         { TokenRBracket    _  }
--    "?"         { TokenQMark        }
    ident       { TokenIdent _ $$     }
    int         { TokenInt   _ $$     }
    type        { TokenType  _ $$     }
    hole        { TokenHole  _ $$     }
    case        { Builtin _ "case"    }
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

Stm : type "::=" "{" TypeDef "}"      { TypeStm       $1 (reverse $4) }
    | ident ":" Type                  { SignStm       $1 (reverse $3) }
    | ident ":" Types "{" Exps "}"    { FuncStm       $1 (reverse $5) [$3] }
    | ident ":" Type "{" Pattern "}"  { PatternStm $1    (reverse $3) (reverse $5) }
    | ident "=" Exp                   { FuncStm  $1 [$3] [] }
    | ident "=" Exp ":" Type          { FuncStm  $1 [$3] (reverse $5) } -- spruce this up
    | ident "=" "{" Exps "}"          { FuncStm  $1      (reverse $4)  [] } -- pull out the type
    | ident "=" "{" Exps "}" ":" Type { FuncStm  $1      (reverse $4)  (reverse $7) }
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
    | type                     { TypeCon   $1 [] }
    | type "(" Args ")"        { TypeCon   $1 (reverse $3) }
    | case Exp "{" Case "}"    { CaseExp   $2 (reverse $4) }
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

Types : type                { TypeN $1  }
      | "(" ")"             { VoidType  }

TypeDef : Types              { [ $1 ] }
        | TypeDef ";" Types  { $3 : $1 }

Type : Types                 { [ $1 ] }
     | Type "->" Types       { $3 : $1 }  

{

getWholeLine :: [Token] -> Int -> [Token]
getWholeLine tokens line = filter p tokens
     where p = (==) line . Lexer.getLNum . Lexer.tokenPosn

parseError :: [Token] -> a
parseError [    ] = errorWithoutStackTrace "parse error"
parseError tokens = errorWithoutStackTrace ("\nparse error at " ++ 
     "line " ++ show line ++
     ", column " ++ show column ++
     "\n--------------------------------------\n" ++
     wholeLine ++
     "\n^\n")
          where pos = Lexer.tokenPosn (head tokens)
                column = Lexer.getCNum pos
                line = Lexer.getLNum pos
                wholeLine = show $ getWholeLine tokens line

type Program = [ Stm ]

data Types = VoidType
           | TypeN String
           deriving Show

data Exp = PatternExp [ (Const, Exp) ]
         | VoidExp
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

type TypeSign = [ Types ] 

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
