module ParseMonad where

-- The code is largely adapted from the Happy user guide

-- basic error wrapper
data ParseResult a = Ok a | Failed String

-- the ParseMonad
type P a = String -> ParseResult a

-- Parse m, if it succeeds parse k
thenP :: P a -> (a -> P b) -> P b
thenP m k = \s -> case m s of
    Ok     a -> k a s
    Failed e -> Failed e

returnP :: a -> P a
returnP a _ = Ok a

failP :: String -> P a
failP e _ = Failed e

catchP :: P a -> (String -> P a) -> P a
catchP m k = \s -> case m s of
    Ok    a  -> Ok a
    Failed e -> k e s
