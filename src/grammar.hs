{-# OPTIONS_GHC -w #-}
{-# OPTIONS -cpp #-}
module Parser where
import Lexer
import Data.List
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import qualified System.IO as Happy_System_IO
import qualified System.IO.Unsafe as Happy_System_IO_Unsafe
import qualified Debug.Trace as Happy_Debug_Trace
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,122) ([0,40960,28,0,64,8192,0,0,0,0,8192,8,0,8192,4,0,512,0,0,1,0,32,0,16384,0,0,2,0,128,0,0,9,32768,2859,0,0,2,512,0,0,0,0,0,4096,0,0,0,0,4,0,0,0,0,0,49152,1413,0,49888,2,64,0,0,0,0,0,1,512,0,0,0,0,0,0,0,8192,0,0,0,0,1024,0,0,2,0,512,0,0,1,0,0,0,0,4,32768,257,0,49888,2,1024,8192,0,46264,0,0,0,0,64,4,1,0,32768,2827,0,0,2,0,0,0,0,0,47104,176,0,0,0,0,0,0,0,0,0,0,0,32768,0,37056,0,0,0,4096,0,0,0,0,0,0,0,0,0,32768,2827,0,0,0,0,0,0,0,32,512,4096,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Stm","Exp","Pattern","Pattern1","Const","Exps","Exp1","TypeDef","Type","\"->\"","\"=>\"","\"<-\"","\"::=\"","\"|\"","\":\"","\";\"","\",\"","\"\955\"","str","chr","\":=\"","\"(\"","\")\"","\"{\"","\"}\"","\"?\"","ident","int","type","pattern","case","export","instance","class","binop","%eof"]
        bit_start = st Prelude.* 39
        bit_end = (st Prelude.+ 1) Prelude.* 39
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..38]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

happyActOffsets :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyActOffsets = Happy_Data_Array.listArray (0,67) ([32,-8,29,11,36,-12,23,33,54,58,66,68,-7,-4,59,75,0,55,0,67,0,0,26,26,81,0,71,86,0,0,72,0,74,76,77,78,0,79,8,26,-6,13,0,-10,89,26,80,0,0,26,0,0,0,0,82,30,0,90,0,0,0,26,0,0,83,-5,0,0
	])

happyGotoOffsets :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyGotoOffsets = Happy_Data_Array.listArray (0,67) ([95,0,0,0,0,0,0,0,0,0,0,0,88,50,91,0,0,0,0,0,0,0,63,57,0,0,0,0,0,0,0,0,0,0,0,0,0,0,73,64,0,24,0,0,0,65,0,0,0,69,0,0,0,0,0,56,0,0,0,0,0,70,0,0,0,0,0,0
	])

happyAdjustOffset :: Prelude.Int -> Prelude.Int
happyAdjustOffset = Prelude.id

happyDefActions :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyDefActions = Happy_Data_Array.listArray (0,67) ([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-2,-27,-5,-17,0,-22,-23,0,0,-15,-21,0,-3,-4,-29,0,-9,0,0,0,0,-8,0,0,0,0,0,-24,0,0,0,0,-28,-13,0,-12,-25,-6,-26,-14,0,-18,0,-30,-10,-7,0,-19,-11,-16,0,-20
	])

happyCheck :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyCheck = Happy_Data_Array.listArray (0,122) ([-1,7,7,15,14,9,10,11,20,13,17,15,20,20,18,19,26,21,10,11,26,26,9,10,11,1,13,19,4,16,6,18,19,4,21,9,10,11,27,13,10,11,6,20,18,19,16,21,12,19,18,1,20,20,4,23,24,25,1,3,4,4,5,6,1,1,1,4,4,4,1,1,18,4,4,2,3,4,20,20,5,26,16,15,3,18,15,1,16,15,1,15,2,16,16,0,8,-1,7,20,20,-1,-1,-1,-1,-1,-1,-1,26,26,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
	])

happyTable :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyTable = Happy_Data_Array.listArray (0,122) ([0,54,67,11,51,20,21,22,12,23,29,24,3,30,25,26,46,27,21,22,46,46,20,21,22,40,23,26,18,53,51,25,26,15,27,20,21,22,-1,23,21,22,13,10,25,26,64,27,14,26,5,17,3,9,18,6,7,8,40,62,57,18,41,42,43,54,48,18,18,18,64,65,34,18,18,55,56,57,33,17,47,46,32,31,40,45,39,38,37,36,50,35,62,61,60,3,27,0,15,59,48,0,0,0,0,0,0,0,46,46,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

happyReduceArr = Happy_Data_Array.array (1, 29) [
	(1 , happyReduce_1),
	(2 , happyReduce_2),
	(3 , happyReduce_3),
	(4 , happyReduce_4),
	(5 , happyReduce_5),
	(6 , happyReduce_6),
	(7 , happyReduce_7),
	(8 , happyReduce_8),
	(9 , happyReduce_9),
	(10 , happyReduce_10),
	(11 , happyReduce_11),
	(12 , happyReduce_12),
	(13 , happyReduce_13),
	(14 , happyReduce_14),
	(15 , happyReduce_15),
	(16 , happyReduce_16),
	(17 , happyReduce_17),
	(18 , happyReduce_18),
	(19 , happyReduce_19),
	(20 , happyReduce_20),
	(21 , happyReduce_21),
	(22 , happyReduce_22),
	(23 , happyReduce_23),
	(24 , happyReduce_24),
	(25 , happyReduce_25),
	(26 , happyReduce_26),
	(27 , happyReduce_27),
	(28 , happyReduce_28),
	(29 , happyReduce_29)
	]

happy_n_terms = 28 :: Prelude.Int
happy_n_nonterms = 9 :: Prelude.Int

happyReduce_1 = happySpecReduce_3  0 happyReduction_1
happyReduction_1 (HappyAbsSyn11  happy_var_3)
	_
	(HappyTerminal (TokenType  happy_var_1))
	 =  HappyAbsSyn4
		 (TypeStm happy_var_1 happy_var_3
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_3  0 happyReduction_2
happyReduction_2 (HappyAbsSyn12  happy_var_3)
	_
	(HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn4
		 (SignStm happy_var_1 happy_var_3
	)
happyReduction_2 _ _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_3  0 happyReduction_3
happyReduction_3 _
	_
	(HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn4
		 (SignStm happy_var_1 ["?"]
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  0 happyReduction_4
happyReduction_4 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn4
		 (FuncStm happy_var_1 [happy_var_3]
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happyReduce 5 0 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (FuncStm happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 5 0 happyReduction_6
happyReduction_6 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Class
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 4 0 happyReduction_7
happyReduction_7 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenType  happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Export happy_var_2
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_3  0 happyReduction_8
happyReduction_8 _
	_
	_
	 =  HappyAbsSyn4
		 (Export "Main"
	)

happyReduce_9 = happyReduce 5 0 happyReduction_9
happyReduction_9 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Instance
	) `HappyStk` happyRest

happyReduce_10 = happyReduce 4 1 happyReduction_10
happyReduction_10 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (PatternExp   happy_var_3
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_3  1 happyReduction_11
happyReduction_11 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  1 happyReduction_12
happyReduction_12 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (BinOp happy_var_2))
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (OpExp  happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  1 happyReduction_13
happyReduction_13 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn5
		 (LetExp    happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  1 happyReduction_14
happyReduction_14 (HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn5
		 (VarExp       happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happyReduce 4 1 happyReduction_15
happyReduction_15 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (LambdaExp happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_1  1 happyReduction_16
happyReduction_16 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn5
		 (ConstExp     happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  2 happyReduction_17
happyReduction_17 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 ([ happy_var_1 ]
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  2 happyReduction_18
happyReduction_18 (HappyAbsSyn7  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_2 : happy_var_1
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 4 3 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 ((happy_var_1 , happy_var_3)
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_1  4 happyReduction_20
happyReduction_20 (HappyTerminal (TokenInt   happy_var_1))
	 =  HappyAbsSyn8
		 (Int32 happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  4 happyReduction_21
happyReduction_21 (HappyTerminal (TokenString happy_var_1))
	 =  HappyAbsSyn8
		 (Str   happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  4 happyReduction_22
happyReduction_22 (HappyTerminal (TokenChar   happy_var_1))
	 =  HappyAbsSyn8
		 (Chr   happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  5 happyReduction_23
happyReduction_23 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 ([ happy_var_1 ]
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  5 happyReduction_24
happyReduction_24 (HappyAbsSyn10  happy_var_2)
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_2 : happy_var_1
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_2  6 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  7 happyReduction_26
happyReduction_26 (HappyTerminal (TokenType  happy_var_1))
	 =  HappyAbsSyn11
		 ([ happy_var_1 ]
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  7 happyReduction_27
happyReduction_27 (HappyTerminal (TokenType  happy_var_3))
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_3 : happy_var_1
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  8 happyReduction_28
happyReduction_28 (HappyTerminal (TokenType  happy_var_1))
	 =  HappyAbsSyn12
		 ([ happy_var_1 ]
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  8 happyReduction_29
happyReduction_29 (HappyTerminal (TokenType  happy_var_3))
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_3 : happy_var_1
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	happyDoAction 27 notHappyAtAll action sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = happyDoAction i tk action sts stk tks in
	case tk of {
	TokenArrow -> cont 1;
	TokenDoubleArrow -> cont 2;
	TokenLeftArrow -> cont 3;
	TokenData -> cont 4;
	TokenPipe -> cont 5;
	TokenTypeSign -> cont 6;
	TokenSemi -> cont 7;
	TokenComma -> cont 8;
	TokenLambda -> cont 9;
	TokenString happy_dollar_dollar -> cont 10;
	TokenChar   happy_dollar_dollar -> cont 11;
	TokenAssign -> cont 12;
	TokenLParen -> cont 13;
	TokenRParen -> cont 14;
	TokenLBracket -> cont 15;
	TokenRBracket -> cont 16;
	TokenQMark -> cont 17;
	TokenIdent happy_dollar_dollar -> cont 18;
	TokenInt   happy_dollar_dollar -> cont 19;
	TokenType  happy_dollar_dollar -> cont 20;
	Builtin "pattern" -> cont 21;
	Builtin "case" -> cont 22;
	Builtin "export" -> cont 23;
	Builtin "instance" -> cont 24;
	Builtin "class" -> cont 25;
	BinOp happy_dollar_dollar -> cont 26;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 27 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
calc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse 0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


-- TODO Maybe make this prettier
parseError :: [Token] -> a
parseError ts = error $ "Parse error\n" ++ intercalate "\n" (map show ts)

type Program = [ Stm ]

data Exp = PatternExp [ (Const, Exp) ]
         | VarExp Name
         | LambdaExp Name Exp
         | LetExp Name Exp
         | ConstExp Const
         | OpExp Name Exp Exp
         deriving Show

data Const = Int32 Int
           | Str   String
           | Chr   Char
           deriving Show

type TypeSign = [ Name ] 

data Stm = TypeStm Name TypeSign
         | SignStm Name TypeSign
         | FuncStm Name [ Exp ]
         | Class
         | Export String
         | Instance
         deriving Show

type Name  = String

main = print . calc . scanTokens
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList

































happyTrace string expr = Happy_System_IO_Unsafe.unsafePerformIO $ do
    Happy_System_IO.hPutStr Happy_System_IO.stderr string
    return expr




infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (0) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



happyDoAction i tk st
        = (happyTrace ("state: " ++ show (st) ++ 
                      ",\ttoken: " ++ show (i) ++
                      ",\taction: ")) $
          case action of
                (0)           -> (happyTrace ("fail.\n")) $
                                     happyFail (happyExpListPerState ((st) :: Prelude.Int)) i tk st
                (-1)          -> (happyTrace ("accept.\n")) $
                                     happyAccept i tk st
                n | (n Prelude.< ((0) :: Prelude.Int)) -> (happyTrace ("reduce (rule " ++ show rule
                                                               ++ ")")) $
                                                   (happyReduceArr Happy_Data_Array.! rule) i tk st
                                                   where rule = ((Prelude.negate ((n Prelude.+ ((1) :: Prelude.Int)))))
                n                 -> (happyTrace ("shift, enter state "
                                                 ++ show (new_state)
                                                 ++ "\n")) $
                                     happyShift new_state i tk st
                                     where new_state = (n Prelude.- ((1) :: Prelude.Int))
   where off    = happyAdjustOffset (indexShortOffAddr happyActOffsets st)
         off_i  = (off Prelude.+ i)
         check  = if (off_i Prelude.>= ((0) :: Prelude.Int))
                  then (indexShortOffAddr happyCheck off_i Prelude.== i)
                  else Prelude.False
         action
          | check     = indexShortOffAddr happyTable off_i
          | Prelude.otherwise = indexShortOffAddr happyDefActions st












indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)













-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (0) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     happyDoAction i tk new_state (HappyCons (st) (sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state (HappyCons (st) (sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (0) tk st sts stk
     = happyFail [] (0) tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (0) tk st sts stk
     = happyFail [] (0) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (0) tk st sts stk
     = happyFail [] (0) tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (0) tk st sts stk
     = happyFail [] (0) tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (0) tk st sts stk
     = happyFail [] (0) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@((HappyCons (st1@(action)) (_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn (0) tk st sts stk
     = happyFail [] (0) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (0) tk st sts stk
     = happyFail [] (0) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
         let drop_stk = happyDropStk k stk

             off = happyAdjustOffset (indexShortOffAddr happyGotoOffsets st1)
             off_i = (off Prelude.+ nt)
             new_state = indexShortOffAddr happyTable off_i




          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n (HappyCons (_) (t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction


happyGoto nt j tk st = 
   (happyTrace (", goto state " ++ show (new_state) ++ "\n")) $
   happyDoAction j tk new_state
   where off = happyAdjustOffset (indexShortOffAddr happyGotoOffsets st)
         off_i = (off Prelude.+ nt)
         new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (0) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (action) sts stk =
--      trace "entering error recovery" $
        happyDoAction (0) tk action sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.


{-# NOINLINE happyDoAction #-}
{-# NOINLINE happyTable #-}
{-# NOINLINE happyCheck #-}
{-# NOINLINE happyActOffsets #-}
{-# NOINLINE happyGotoOffsets #-}
{-# NOINLINE happyDefActions #-}

{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
