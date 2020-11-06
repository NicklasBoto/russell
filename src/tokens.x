{
{-# LANGUAGE FlexibleInstances #-}
module Lexer where
import Data.List
}

%wrapper "posn"

$digit = 0-9
$a = [a-z]
$A = [A-Z]

tokens :-
    
    $white+                              ;
    "--".*                               ;
    export                               { \p s -> Builtin p "export"        }
    pattern                              { \p s -> Builtin p "pattern"       }
    instance                             { \p s -> Builtin p "instance"      }
    case                                 { \p s -> Builtin p "case"          }
    class                                { \p s -> Builtin p "class"         }
    "->"                                 { \p s -> TokenArrow p              }
    "=>"                                 { \p s -> TokenDoubleArrow p        }
    "<-"                                 { \p s -> TokenLeftArrow p          }
    ";"                                  { \p s -> TokenSemi p               }
    ","                                  { \p s -> TokenComma p              }
    $digit+                              { \p s -> TokenInt p (read s)       }
    \\                                   { \p s -> TokenBackslash p          }
    "λ"                                  { \p s -> TokenLambda p             }
    "+"                                  { \p s -> BinOp p "+"               }
    "*"                                  { \p s -> BinOp p "*"               }
    "-"                                  { \p s -> BinOp p "-"               }
    "/"                                  { \p s -> BinOp p "/"               }
    ` $a [$a $A \_ \' $digit]* `         { \p s -> BinOp p (init (tail s))   }
    \"([^\"\\]*(\\.[^\"\\]*)*)\"         { \p s -> TokenString p s           }
    \' $a \'                             { \p (_:s:_) -> TokenChar p s       }
    ::\=                                 { \p s -> TokenData p               }
    \|                                   { \p s -> TokenPipe p               }
    :                                    { \p s -> TokenTypeSign p           }
    \=                                   { \p s -> TokenAssign p             }
    \(                                   { \p s -> TokenLParen p             }
    \)                                   { \p s -> TokenRParen p             }
    \{                                   { \p s -> TokenLBracket p           }
    \}                                   { \p s -> TokenRBracket p           }
    \_ [$a $A $digit]*                   { \p s -> TokenHole p s             }
    "?"                                  { \p s -> TokenQMark p              }
    $a [$a $A \_ \' $digit]*             { \p s -> TokenIdent p s            }
    $a [$a $A \_ \' $digit]*\!           { \p s -> TokenMacroCall p (init s) }
    $A [$a $A \' $digit]*                { \p s -> TokenType p s             }
   
{
-- Lexed tokens
data Token = TokenArrow       AlexPosn
           | TokenLeftArrow   AlexPosn
           | TokenDoubleArrow AlexPosn
           | TokenSemi        AlexPosn
           | TokenComma       AlexPosn
           | TokenInt         AlexPosn Int
           | TokenBackslash   AlexPosn
           | TokenLambda      AlexPosn
           | TokenString      AlexPosn String
           | TokenChar        AlexPosn Char
           | TokenData        AlexPosn
           | TokenPipe        AlexPosn
           | TokenTypeSign    AlexPosn
           | TokenAssign      AlexPosn
           | TokenLParen      AlexPosn
           | TokenRParen      AlexPosn
           | TokenLBracket    AlexPosn
           | TokenRBracket    AlexPosn
           | TokenQMark       AlexPosn
           | TokenHole        AlexPosn String
           | TokenIdent       AlexPosn String
           | TokenMacroCall   AlexPosn String
           | TokenType        AlexPosn String
           | Builtin          AlexPosn String
           | BinOp            AlexPosn String

instance Show Token where
    show (TokenArrow       p  ) = "->"
    show (TokenLeftArrow   p  ) = "<-"
    show (TokenDoubleArrow p  ) = "=>"
    show (TokenSemi        p  ) = ";"
    show (TokenComma       p  ) = ","
    show (TokenInt         p x) = show x
    show (TokenBackslash   p  ) = "\\"
    show (TokenLambda      p  ) = "λ"
    show (TokenString      p s) = s
    show (TokenChar        p c) = [c]
    show (TokenTypeSign    p  ) = ":"
    show (TokenAssign      p  ) = "="
    show (TokenLParen      p  ) = "("
    show (TokenRParen      p  ) = ")"
    show (TokenLBracket    p  ) = "{"
    show (TokenRBracket    p  ) = "}"
    show (TokenQMark       p  ) = "?"
    show (TokenHole        p n) = "_" ++ n
    show (TokenIdent       p n) = n
    show (TokenMacroCall   p n) = n
    show (TokenType        p n) = n
    show (Builtin          p n) = n
    show (BinOp            p n) = n

instance {-# OVERLAPPING #-} Show [Token] where
    show = intercalate " " . map show

-- getters
getLNum (AlexPn _ l _) = l
getCNum (AlexPn _ _ c) = c

tokenPosn (TokenArrow       p  ) = p
tokenPosn (TokenLeftArrow   p  ) = p
tokenPosn (TokenDoubleArrow p  ) = p
tokenPosn (TokenSemi        p  ) = p
tokenPosn (TokenComma       p  ) = p
tokenPosn (TokenInt         p _) = p
tokenPosn (TokenBackslash   p  ) = p
tokenPosn (TokenLambda      p  ) = p
tokenPosn (TokenString      p _) = p
tokenPosn (TokenChar        p _) = p
tokenPosn (TokenData        p  ) = p
tokenPosn (TokenPipe        p  ) = p
tokenPosn (TokenTypeSign    p  ) = p
tokenPosn (TokenAssign      p  ) = p
tokenPosn (TokenLParen      p  ) = p
tokenPosn (TokenRParen      p  ) = p
tokenPosn (TokenLBracket    p  ) = p
tokenPosn (TokenRBracket    p  ) = p
tokenPosn (TokenQMark       p  ) = p
tokenPosn (TokenHole        p _) = p
tokenPosn (TokenIdent       p _) = p
tokenPosn (TokenMacroCall   p _) = p
tokenPosn (TokenType        p _) = p
tokenPosn (Builtin          p _) = p
tokenPosn (BinOp            p _) = p

scanTokens :: String -> [Token]
scanTokens str = go (alexStartPos, '\n', [], str)
    where go inp@(pos,_,_,str) =
            case alexScan inp 0 of
                AlexEOF -> []
                AlexError ((AlexPn _ line column),_,_,_) -> 
                    errorWithoutStackTrace (
                        "\nlexical error at " ++ 
                        (show line) ++ " line, " ++ 
                        (show column) ++ " column")
                AlexSkip  inp' len -> go inp'
                AlexToken inp' len act -> act pos (take len str) : go inp'
}
