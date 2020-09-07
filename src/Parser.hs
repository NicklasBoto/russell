{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import Data.List
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,65) ([0,1832,0,2,2,0,0,10240,0,4096,2,8192,0,512,0,8,0,2,512,0,16,0,36,33792,5,8192,16384,0,0,0,256,0,22592,0,0,0,0,4096,0,1,0,0,0,0,8192,0,0,0,16,0,1,8192,0,512,0,0,0,32,33792,5,144,0,0,0,32,0,0,0,0,33,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Stm","Exp","TypeArgs","TypeDef","Type","\"->\"","\"::=\"","\"|\"","\":\"","\";\"","\":=\"","\"(\"","\")\"","\"{\"","\"}\"","\"?\"","ident","int","type","pattern","case","export","instance","class","%eof"]
        bit_start = st Prelude.* 28
        bit_end = (st Prelude.+ 1) Prelude.* 28
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..27]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (20) = happyShift action_4
action_0 (22) = happyShift action_2
action_0 (25) = happyShift action_5
action_0 (26) = happyShift action_6
action_0 (27) = happyShift action_7
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (22) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (10) = happyShift action_14
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (28) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (12) = happyShift action_12
action_4 (14) = happyShift action_13
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (17) = happyShift action_10
action_5 (22) = happyShift action_11
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (22) = happyShift action_9
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (22) = happyShift action_8
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (20) = happyShift action_28
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (22) = happyShift action_27
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (18) = happyShift action_26
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (17) = happyShift action_25
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (19) = happyShift action_23
action_12 (22) = happyShift action_24
action_12 (8) = happyGoto action_22
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (15) = happyShift action_18
action_13 (20) = happyShift action_19
action_13 (21) = happyShift action_20
action_13 (23) = happyShift action_21
action_13 (5) = happyGoto action_17
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (22) = happyShift action_16
action_14 (7) = happyGoto action_15
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (11) = happyShift action_36
action_15 _ = happyReduce_1

action_16 _ = happyReduce_16

action_17 (13) = happyShift action_35
action_17 _ = happyReduce_4

action_18 (15) = happyShift action_18
action_18 (20) = happyShift action_19
action_18 (21) = happyShift action_20
action_18 (23) = happyShift action_21
action_18 (5) = happyGoto action_34
action_18 _ = happyFail (happyExpListPerState 18)

action_19 _ = happyReduce_13

action_20 _ = happyReduce_12

action_21 (17) = happyShift action_33
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (9) = happyShift action_32
action_22 _ = happyReduce_2

action_23 _ = happyReduce_3

action_24 _ = happyReduce_18

action_25 (18) = happyShift action_31
action_25 _ = happyFail (happyExpListPerState 25)

action_26 _ = happyReduce_7

action_27 (17) = happyShift action_30
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (17) = happyShift action_29
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (18) = happyShift action_42
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (18) = happyShift action_41
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_6

action_32 (22) = happyShift action_40
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (15) = happyShift action_18
action_33 (20) = happyShift action_19
action_33 (21) = happyShift action_20
action_33 (23) = happyShift action_21
action_33 (5) = happyGoto action_39
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (13) = happyShift action_35
action_34 (16) = happyShift action_38
action_34 _ = happyFail (happyExpListPerState 34)

action_35 _ = happyReduce_11

action_36 (22) = happyShift action_37
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_17

action_38 _ = happyReduce_10

action_39 (13) = happyShift action_35
action_39 (18) = happyShift action_43
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_19

action_41 _ = happyReduce_8

action_42 _ = happyReduce_5

action_43 _ = happyReduce_9

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn7  happy_var_3)
	_
	(HappyTerminal (TokenType  happy_var_1))
	 =  HappyAbsSyn4
		 (TypeStm happy_var_1 happy_var_3
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_3  4 happyReduction_2
happyReduction_2 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn4
		 (SignStm happy_var_1 happy_var_3
	)
happyReduction_2 _ _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_3  4 happyReduction_3
happyReduction_3 _
	_
	(HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn4
		 (SignStm happy_var_1 ["?"]
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn4
		 (FuncStm happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happyReduce 5 4 happyReduction_5
happyReduction_5 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Class
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 4 4 happyReduction_6
happyReduction_6 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenType  happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Export happy_var_2
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 _
	_
	_
	 =  HappyAbsSyn4
		 (Export "Main"
	)

happyReduce_8 = happyReduce 5 4 happyReduction_8
happyReduction_8 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Instance
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 4 5 happyReduction_9
happyReduction_9 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (PatternExp happy_var_3
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_3  5 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  5 happyReduction_11
happyReduction_11 _
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  5 happyReduction_12
happyReduction_12 (HappyTerminal (TokenInt   happy_var_1))
	 =  HappyAbsSyn5
		 (Int32Exp   happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  5 happyReduction_13
happyReduction_13 (HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn5
		 (VarExp     happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_0  6 happyReduction_14
happyReduction_14  =  HappyAbsSyn6
		 ([]
	)

happyReduce_15 = happySpecReduce_2  6 happyReduction_15
happyReduction_15 (HappyTerminal (TokenIdent happy_var_2))
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_2 : happy_var_1
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  7 happyReduction_16
happyReduction_16 (HappyTerminal (TokenType  happy_var_1))
	 =  HappyAbsSyn7
		 ([ happy_var_1 ]
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  7 happyReduction_17
happyReduction_17 (HappyTerminal (TokenType  happy_var_3))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_3 : happy_var_1
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  8 happyReduction_18
happyReduction_18 (HappyTerminal (TokenType  happy_var_1))
	 =  HappyAbsSyn8
		 ([ happy_var_1 ]
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  8 happyReduction_19
happyReduction_19 (HappyTerminal (TokenType  happy_var_3))
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_3 : happy_var_1
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 28 28 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenArrow -> cont 9;
	TokenData -> cont 10;
	TokenPipe -> cont 11;
	TokenTypeSign -> cont 12;
	TokenSemi -> cont 13;
	TokenAssign -> cont 14;
	TokenLParen -> cont 15;
	TokenRParen -> cont 16;
	TokenLBracket -> cont 17;
	TokenRBracket -> cont 18;
	TokenQMark -> cont 19;
	TokenIdent happy_dollar_dollar -> cont 20;
	TokenInt   happy_dollar_dollar -> cont 21;
	TokenType  happy_dollar_dollar -> cont 22;
	Builtin "pattern" -> cont 23;
	Builtin "case" -> cont 24;
	Builtin "export" -> cont 25;
	Builtin "instance" -> cont 26;
	Builtin "class" -> cont 27;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 28 tk tks = happyError' (tks, explist)
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
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


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
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































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
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
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
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

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
