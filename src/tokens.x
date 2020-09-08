{
module Lexer where
}

%wrapper "basic"

$digit = 0-9
$a = [a-z]
$A = [A-Z]

tokens :-
    
    $white+                              ;
    "--".*                               ;
    export                               { \s -> Builtin "export"   }
    pattern                              { \s -> Builtin "pattern"  }
    instance                             { \s -> Builtin "instance" }
    case                                 { \s -> Builtin "case"     }
    class                                { \s -> Builtin "class"    }
    "->"                                 { \s -> TokenArrow         }
    "=>"                                 { \s -> TokenDoubleArrow   }
    "<-"                                 { \s -> TokenLeftArrow     }
    ";"                                  { \s -> TokenSemi          }
    ","                                  { \s -> TokenComma         }
    $digit+                              { \s -> TokenInt (read s)  }
    \\                                   { \s -> TokenBackslash     }
    "λ"                                  { \s -> TokenLambda        }
    "+"                                  { \s -> BinOp "+"          }
    "*"                                  { \s -> BinOp "*"          }
    "-"                                  { \s -> BinOp "-"          }
    "/"                                  { \s -> BinOp "/"          }
    ` $a [$a $A \_ \' $digit]* `         { BinOp . init . tail      }
    \"([^\"\\]*(\\.[^\"\\]*)*)\"         { \s -> TokenString s      }
    \' $a \'                             { \(_:s:_) -> TokenChar s  }
    ::\=                                 { \s -> TokenData          }
    \|                                   { \s -> TokenPipe          }
    :                                    { \s -> TokenTypeSign      }
    :\=                                  { \s -> TokenAssign        }
    \(                                   { \s -> TokenLParen        }
    \)                                   { \s -> TokenRParen        }
    \{                                   { \s -> TokenLBracket      }
    \}                                   { \s -> TokenRBracket      }
    \_ [$a $A $digit]*                   { \s -> TokenHole  s       }
    "?"                                  { \s -> TokenQMark         }
    $a [$a $A \_ \' $digit]*             { \s -> TokenIdent s       }
    $A [$a $A \' $digit]*                { \s -> TokenType  s       }

{
-- Lexed tokens
data Token = TokenArrow
           | TokenLeftArrow
           | TokenDoubleArrow
           | TokenSemi
           | TokenComma
           | TokenInt Int
           | TokenBackslash
           | TokenLambda
           | TokenString String
           | TokenChar   Char
           | TokenData
           | TokenPipe
           | TokenTypeSign
           | TokenAssign
           | TokenLParen
           | TokenRParen
           | TokenLBracket
           | TokenRBracket
           | TokenQMark
           | TokenHole  String
           | TokenIdent String
           | TokenType  String
           | Builtin    String
           | BinOp      String
           deriving Show

scanTokens = alexScanTokens
}
