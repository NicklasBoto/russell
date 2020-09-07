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
    "::="       { TokenData          }
    "|"         { TokenPipe          }
    ":"         { TokenTypeSign      }
    ";"         { TokenSemi          }
    ":="        { TokenAssign        }
    "("         { TokenLParen        }
    ")"         { TokenRParen        }
    "{"         { TokenLBracket      }
    "}"         { TokenRBracket      }
    "?"         { TokenQMark         }
    ident       { TokenIdent $$      }
    int         { TokenInt   $$      }
    type        { TokenType  $$      }
    pattern     { Builtin "pattern"  }
    case        { Builtin "case"     }
    export      { Builtin "export"   }
    instance    { Builtin "instance" }
    class       { Builtin "class"    }

%right "->"

%%

Stm : type "::=" TypeDef         { TypeStm $1 $3    }
    | ident ":" Type             { SignStm $1 $3    }
    | ident ":" "?"              { SignStm $1 ["?"] } 
    | ident ":=" Exp             { FuncStm $1 $3    }
    | class type ident   "{" "}" { Class            }
    | export type        "{" "}" { Export $2        }
    | export             "{" "}" { Export "Main"    }
    | instance type type "{" "}" { Instance         }

Exp : pattern "{" Exp "}"   { PatternExp $3 }
    | "(" Exp ")"           {            $2 }
    | Exp ";"               {            $1 }
    | int                   { Int32Exp   $1 }
    | ident                 { VarExp     $1 }

TypeArgs : {- empty -}      { [] }
         | TypeArgs ident   { $2 : $1 }

TypeDef : type              { [ $1 ] }
        | TypeDef "|" type  { $3 : $1 }

Type : type                 { [ $1 ] }
     | Type "->" type       { $3 : $1 }  

{
-- TODO Maybe make this prettier
parseError :: [Token] -> a
parseError ts = error $ "Parse error\n" ++ intercalate "\n" (map show ts)

data Exp = PatternExp Exp
         | Int32Exp Int
         | VarExp String
       deriving Show

type TypeSign = [ Type ] 

data Stm = TypeStm Name TypeSign
         | SignStm Name TypeSign
         | FuncStm Name Exp
         | Class
         | Export String
         | Instance
         deriving Show

-- TODO make this better...
type Type  = String
type TypeC = String
type Name  = String

main = print . calc . scanTokens
}
