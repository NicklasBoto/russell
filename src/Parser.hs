{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import Data.List
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 (Program)
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,132) ([0,40960,0,0,10,0,160,0,0,0,264,0,64,0,0,160,0,0,0,2048,0,0,8,49152,1002,32768,16384,0,0,0,0,0,0,0,0,15916,0,58048,3,8232,0,0,0,0,32,0,0,0,11264,62,128,8,0,0,0,32768,0,256,1,0,0,0,2048,0,58048,3,32768,64,49152,994,0,15916,0,58048,3,11264,62,0,1024,0,257,0,1024,4,0,8,49152,994,0,0,32768,0,0,0,0,49152,994,32768,0,0,0,4,16896,0,0,1024,0,16384,0,1056,0,11264,62,256,1024,0,257,0,0,0,0,0,0,128,0,0,0,0,0,11264,62,0,0,0,15916,0,1,4,256,1,0,0,0,15916,0,0,0,0,0,0,128,0,16384,32768,0,0,0,64,49152,994,0,0,0,58048,3,0,64,0,0,0,16384,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Stms","Stm","Exp","Args","Case","Case1","Pattern","Pattern1","Const","Exps","TypeDef","Type","\"->\"","\"=>\"","\"<-\"","\"::=\"","\":\"","\";\"","\",\"","str","chr","\"=\"","\"(\"","\")\"","\"{\"","\"}\"","ident","int","type","hole","case","binop","%eof"]
        bit_start = st Prelude.* 36
        bit_end = (st Prelude.+ 1) Prelude.* 36
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..35]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (30) = happyShift action_4
action_0 (32) = happyShift action_5
action_0 (4) = happyGoto action_6
action_0 (5) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (30) = happyShift action_4
action_1 (32) = happyShift action_5
action_1 (4) = happyGoto action_2
action_1 (5) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (30) = happyShift action_4
action_2 (32) = happyShift action_5
action_2 (5) = happyGoto action_7
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_2

action_4 (20) = happyShift action_9
action_4 (25) = happyShift action_10
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (19) = happyShift action_8
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (30) = happyShift action_4
action_6 (32) = happyShift action_5
action_6 (36) = happyAccept
action_6 (5) = happyGoto action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_1

action_8 (28) = happyShift action_24
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (32) = happyShift action_23
action_9 (15) = happyGoto action_22
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (23) = happyShift action_13
action_10 (24) = happyShift action_14
action_10 (26) = happyShift action_15
action_10 (28) = happyShift action_16
action_10 (30) = happyShift action_17
action_10 (31) = happyShift action_18
action_10 (32) = happyShift action_19
action_10 (33) = happyShift action_20
action_10 (34) = happyShift action_21
action_10 (6) = happyGoto action_11
action_10 (12) = happyGoto action_12
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (20) = happyShift action_37
action_11 (35) = happyShift action_38
action_11 _ = happyReduce_6

action_12 _ = happyReduce_15

action_13 _ = happyReduce_31

action_14 _ = happyReduce_32

action_15 (23) = happyShift action_13
action_15 (24) = happyShift action_14
action_15 (26) = happyShift action_15
action_15 (30) = happyShift action_17
action_15 (31) = happyShift action_18
action_15 (32) = happyShift action_19
action_15 (33) = happyShift action_20
action_15 (34) = happyShift action_21
action_15 (6) = happyGoto action_36
action_15 (12) = happyGoto action_12
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (23) = happyShift action_13
action_16 (24) = happyShift action_14
action_16 (26) = happyShift action_15
action_16 (30) = happyShift action_17
action_16 (31) = happyShift action_18
action_16 (32) = happyShift action_19
action_16 (33) = happyShift action_20
action_16 (34) = happyShift action_21
action_16 (6) = happyGoto action_34
action_16 (12) = happyGoto action_12
action_16 (13) = happyGoto action_35
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (16) = happyShift action_31
action_17 (18) = happyShift action_32
action_17 (26) = happyShift action_33
action_17 _ = happyReduce_13

action_18 _ = happyReduce_30

action_19 (26) = happyShift action_30
action_19 _ = happyReduce_17

action_20 _ = happyReduce_20

action_21 (23) = happyShift action_13
action_21 (24) = happyShift action_14
action_21 (26) = happyShift action_15
action_21 (30) = happyShift action_17
action_21 (31) = happyShift action_18
action_21 (32) = happyShift action_19
action_21 (33) = happyShift action_20
action_21 (34) = happyShift action_21
action_21 (6) = happyGoto action_29
action_21 (12) = happyGoto action_12
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (16) = happyShift action_27
action_22 (28) = happyShift action_28
action_22 _ = happyReduce_4

action_23 _ = happyReduce_37

action_24 (32) = happyShift action_26
action_24 (14) = happyGoto action_25
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (21) = happyShift action_54
action_25 (29) = happyShift action_55
action_25 _ = happyFail (happyExpListPerState 25)

action_26 _ = happyReduce_35

action_27 (32) = happyShift action_53
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (23) = happyShift action_13
action_28 (24) = happyShift action_14
action_28 (26) = happyShift action_15
action_28 (30) = happyShift action_17
action_28 (31) = happyShift action_18
action_28 (32) = happyShift action_19
action_28 (33) = happyShift action_20
action_28 (34) = happyShift action_21
action_28 (6) = happyGoto action_50
action_28 (10) = happyGoto action_51
action_28 (11) = happyGoto action_52
action_28 (12) = happyGoto action_12
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (28) = happyShift action_49
action_29 (35) = happyShift action_38
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (23) = happyShift action_13
action_30 (24) = happyShift action_14
action_30 (26) = happyShift action_15
action_30 (30) = happyShift action_17
action_30 (31) = happyShift action_18
action_30 (32) = happyShift action_19
action_30 (33) = happyShift action_20
action_30 (34) = happyShift action_21
action_30 (6) = happyGoto action_44
action_30 (7) = happyGoto action_48
action_30 (12) = happyGoto action_12
action_30 _ = happyReduce_21

action_31 (23) = happyShift action_13
action_31 (24) = happyShift action_14
action_31 (26) = happyShift action_15
action_31 (30) = happyShift action_17
action_31 (31) = happyShift action_18
action_31 (32) = happyShift action_19
action_31 (33) = happyShift action_20
action_31 (34) = happyShift action_21
action_31 (6) = happyGoto action_47
action_31 (12) = happyGoto action_12
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (23) = happyShift action_13
action_32 (24) = happyShift action_14
action_32 (26) = happyShift action_15
action_32 (30) = happyShift action_17
action_32 (31) = happyShift action_18
action_32 (32) = happyShift action_19
action_32 (33) = happyShift action_20
action_32 (34) = happyShift action_21
action_32 (6) = happyGoto action_46
action_32 (12) = happyGoto action_12
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (23) = happyShift action_13
action_33 (24) = happyShift action_14
action_33 (26) = happyShift action_15
action_33 (30) = happyShift action_17
action_33 (31) = happyShift action_18
action_33 (32) = happyShift action_19
action_33 (33) = happyShift action_20
action_33 (34) = happyShift action_21
action_33 (6) = happyGoto action_44
action_33 (7) = happyGoto action_45
action_33 (12) = happyGoto action_12
action_33 _ = happyReduce_21

action_34 (35) = happyShift action_38
action_34 _ = happyReduce_33

action_35 (21) = happyShift action_42
action_35 (29) = happyShift action_43
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (27) = happyShift action_41
action_36 (35) = happyShift action_38
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (32) = happyShift action_23
action_37 (15) = happyGoto action_40
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (23) = happyShift action_13
action_38 (24) = happyShift action_14
action_38 (26) = happyShift action_15
action_38 (30) = happyShift action_17
action_38 (31) = happyShift action_18
action_38 (32) = happyShift action_19
action_38 (33) = happyShift action_20
action_38 (34) = happyShift action_21
action_38 (6) = happyGoto action_39
action_38 (12) = happyGoto action_12
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_11

action_40 (16) = happyShift action_27
action_40 _ = happyReduce_7

action_41 _ = happyReduce_10

action_42 (23) = happyShift action_13
action_42 (24) = happyShift action_14
action_42 (26) = happyShift action_15
action_42 (30) = happyShift action_17
action_42 (31) = happyShift action_18
action_42 (32) = happyShift action_19
action_42 (33) = happyShift action_20
action_42 (34) = happyShift action_21
action_42 (6) = happyGoto action_67
action_42 (12) = happyGoto action_12
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (20) = happyShift action_66
action_43 _ = happyReduce_8

action_44 (35) = happyShift action_38
action_44 _ = happyReduce_22

action_45 (22) = happyShift action_63
action_45 (27) = happyShift action_65
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (35) = happyShift action_38
action_46 _ = happyReduce_12

action_47 (35) = happyShift action_38
action_47 _ = happyReduce_14

action_48 (22) = happyShift action_63
action_48 (27) = happyShift action_64
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (23) = happyShift action_13
action_49 (24) = happyShift action_14
action_49 (26) = happyShift action_15
action_49 (30) = happyShift action_17
action_49 (31) = happyShift action_18
action_49 (32) = happyShift action_19
action_49 (33) = happyShift action_20
action_49 (34) = happyShift action_21
action_49 (6) = happyGoto action_60
action_49 (8) = happyGoto action_61
action_49 (9) = happyGoto action_62
action_49 (12) = happyGoto action_12
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (17) = happyShift action_59
action_50 (35) = happyShift action_38
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (21) = happyShift action_57
action_51 (29) = happyShift action_58
action_51 _ = happyFail (happyExpListPerState 51)

action_52 _ = happyReduce_27

action_53 _ = happyReduce_38

action_54 (32) = happyShift action_56
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_3

action_56 _ = happyReduce_36

action_57 (23) = happyShift action_13
action_57 (24) = happyShift action_14
action_57 (26) = happyShift action_15
action_57 (30) = happyShift action_17
action_57 (31) = happyShift action_18
action_57 (32) = happyShift action_19
action_57 (33) = happyShift action_20
action_57 (34) = happyShift action_21
action_57 (6) = happyGoto action_50
action_57 (11) = happyGoto action_74
action_57 (12) = happyGoto action_12
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_5

action_59 (23) = happyShift action_13
action_59 (24) = happyShift action_14
action_59 (26) = happyShift action_15
action_59 (30) = happyShift action_17
action_59 (31) = happyShift action_18
action_59 (32) = happyShift action_19
action_59 (33) = happyShift action_20
action_59 (34) = happyShift action_21
action_59 (6) = happyGoto action_73
action_59 (12) = happyGoto action_12
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (17) = happyShift action_72
action_60 (35) = happyShift action_38
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (21) = happyShift action_70
action_61 (29) = happyShift action_71
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_24

action_63 (23) = happyShift action_13
action_63 (24) = happyShift action_14
action_63 (26) = happyShift action_15
action_63 (30) = happyShift action_17
action_63 (31) = happyShift action_18
action_63 (32) = happyShift action_19
action_63 (33) = happyShift action_20
action_63 (34) = happyShift action_21
action_63 (6) = happyGoto action_69
action_63 (12) = happyGoto action_12
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_18

action_65 _ = happyReduce_16

action_66 (32) = happyShift action_23
action_66 (15) = happyGoto action_68
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (35) = happyShift action_38
action_67 _ = happyReduce_34

action_68 (16) = happyShift action_27
action_68 _ = happyReduce_9

action_69 (35) = happyShift action_38
action_69 _ = happyReduce_23

action_70 (23) = happyShift action_13
action_70 (24) = happyShift action_14
action_70 (26) = happyShift action_15
action_70 (30) = happyShift action_17
action_70 (31) = happyShift action_18
action_70 (32) = happyShift action_19
action_70 (33) = happyShift action_20
action_70 (34) = happyShift action_21
action_70 (6) = happyGoto action_60
action_70 (9) = happyGoto action_76
action_70 (12) = happyGoto action_12
action_70 _ = happyFail (happyExpListPerState 70)

action_71 _ = happyReduce_19

action_72 (23) = happyShift action_13
action_72 (24) = happyShift action_14
action_72 (26) = happyShift action_15
action_72 (30) = happyShift action_17
action_72 (31) = happyShift action_18
action_72 (32) = happyShift action_19
action_72 (33) = happyShift action_20
action_72 (34) = happyShift action_21
action_72 (6) = happyGoto action_75
action_72 (12) = happyGoto action_12
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (35) = happyShift action_38
action_73 _ = happyReduce_29

action_74 _ = happyReduce_28

action_75 (35) = happyShift action_38
action_75 _ = happyReduce_26

action_76 _ = happyReduce_25

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_2 : happy_var_1
	)
happyReduction_1 _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ([ happy_var_1 ]
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happyReduce 5 5 happyReduction_3
happyReduction_3 (_ `HappyStk`
	(HappyAbsSyn14  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenType  happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TypeStm       happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_4 = happySpecReduce_3  5 happyReduction_4
happyReduction_4 (HappyAbsSyn15  happy_var_3)
	_
	(HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn5
		 (SignStm       happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happyReduce 6 5 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn10  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (PatternStm happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_3  5 happyReduction_6
happyReduction_6 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn5
		 (FuncStm  happy_var_1 [happy_var_3] []
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happyReduce 5 5 happyReduction_7
happyReduction_7 ((HappyAbsSyn15  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncStm  happy_var_1 [happy_var_3] happy_var_5
	) `HappyStk` happyRest

happyReduce_8 = happyReduce 5 5 happyReduction_8
happyReduction_8 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncStm  happy_var_1  happy_var_4  []
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 7 5 happyReduction_9
happyReduction_9 ((HappyAbsSyn15  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncStm  happy_var_1  happy_var_4  happy_var_7
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_3  6 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  6 happyReduction_11
happyReduction_11 (HappyAbsSyn6  happy_var_3)
	(HappyTerminal (BinOp happy_var_2))
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (OpExp  happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  6 happyReduction_12
happyReduction_12 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn6
		 (LetExp    happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  6 happyReduction_13
happyReduction_13 (HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn6
		 (VarExp       happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  6 happyReduction_14
happyReduction_14 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn6
		 (LambdaExp happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  6 happyReduction_15
happyReduction_15 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn6
		 (ConstExp     happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happyReduce 4 6 happyReduction_16
happyReduction_16 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (CallExp   happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_1  6 happyReduction_17
happyReduction_17 (HappyTerminal (TokenType  happy_var_1))
	 =  HappyAbsSyn6
		 (TypeCon   happy_var_1 []
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happyReduce 4 6 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenType  happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TypeCon   happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 5 6 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (CaseExp   happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_1  6 happyReduction_20
happyReduction_20 (HappyTerminal (TokenHole  happy_var_1))
	 =  HappyAbsSyn6
		 (HoleExp      happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_0  7 happyReduction_21
happyReduction_21  =  HappyAbsSyn7
		 ([    ]
	)

happyReduce_22 = happySpecReduce_1  7 happyReduction_22
happyReduction_22 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 ([ happy_var_1 ]
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  7 happyReduction_23
happyReduction_23 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_3 : happy_var_1
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  8 happyReduction_24
happyReduction_24 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 ([ happy_var_1 ]
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  8 happyReduction_25
happyReduction_25 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_3 : happy_var_1
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  9 happyReduction_26
happyReduction_26 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn9
		 ((happy_var_1 , happy_var_3)
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  10 happyReduction_27
happyReduction_27 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 ([ happy_var_1 ]
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  10 happyReduction_28
happyReduction_28 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_3 : happy_var_1
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  11 happyReduction_29
happyReduction_29 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn11
		 ((happy_var_1 , happy_var_3)
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  12 happyReduction_30
happyReduction_30 (HappyTerminal (TokenInt   happy_var_1))
	 =  HappyAbsSyn12
		 (Int32 happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  12 happyReduction_31
happyReduction_31 (HappyTerminal (TokenString happy_var_1))
	 =  HappyAbsSyn12
		 (Str   happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  12 happyReduction_32
happyReduction_32 (HappyTerminal (TokenChar   happy_var_1))
	 =  HappyAbsSyn12
		 (Chr   happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  13 happyReduction_33
happyReduction_33 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn13
		 ([ happy_var_1 ]
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  13 happyReduction_34
happyReduction_34 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_3 : happy_var_1
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  14 happyReduction_35
happyReduction_35 (HappyTerminal (TokenType  happy_var_1))
	 =  HappyAbsSyn14
		 ([ happy_var_1 ]
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  14 happyReduction_36
happyReduction_36 (HappyTerminal (TokenType  happy_var_3))
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_3 : happy_var_1
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  15 happyReduction_37
happyReduction_37 (HappyTerminal (TokenType  happy_var_1))
	 =  HappyAbsSyn15
		 ([ happy_var_1 ]
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  15 happyReduction_38
happyReduction_38 (HappyTerminal (TokenType  happy_var_3))
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_3 : happy_var_1
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 36 36 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenArrow -> cont 16;
	TokenDoubleArrow -> cont 17;
	TokenLeftArrow -> cont 18;
	TokenData -> cont 19;
	TokenTypeSign -> cont 20;
	TokenSemi -> cont 21;
	TokenComma -> cont 22;
	TokenString happy_dollar_dollar -> cont 23;
	TokenChar   happy_dollar_dollar -> cont 24;
	TokenAssign -> cont 25;
	TokenLParen -> cont 26;
	TokenRParen -> cont 27;
	TokenLBracket -> cont 28;
	TokenRBracket -> cont 29;
	TokenIdent happy_dollar_dollar -> cont 30;
	TokenInt   happy_dollar_dollar -> cont 31;
	TokenType  happy_dollar_dollar -> cont 32;
	TokenHole  happy_dollar_dollar -> cont 33;
	Builtin "case" -> cont 34;
	BinOp happy_dollar_dollar -> cont 35;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 36 tk tks = happyError' (tks, explist)
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
