{
module Lexer where
}

%wrapper "basic"

$digit = 0-9
$alpha = [a-z]
$ALPHA = [A-Z]

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
    ";"                                  { \s -> TokenSemi          }
    $digit+                              { \s -> TokenInt (read s)  }
    ::\=                                 { \s -> TokenData          }
    \|                                   { \s -> TokenPipe          }
    :                                    { \s -> TokenTypeSign      }
    :\=                                  { \s -> TokenAssign        }
    \(                                   { \s -> TokenLParen        }
    \)                                   { \s -> TokenRParen        }
    \{                                   { \s -> TokenLBracket      }
    \}                                   { \s -> TokenRBracket      }
    \_ [$alpha $ALPHA $digit]*           { \s -> TokenHole  s       }
    "?"                                  { \s -> TokenQMark         }
    $alpha [$alpha $ALPHA \_ \' $digit]* { \s -> TokenIdent s       }
    $ALPHA [$alpha $ALPHA \' $digit]*    { \s -> TokenType  s       }

{
-- Lexed tokens
data Token = TokenArrow
           | TokenDoubleArrow
           | TokenSemi
           | TokenInt Int
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
           deriving Show

scanTokens = alexScanTokens
}
