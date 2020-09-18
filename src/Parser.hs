{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import Data.List
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15
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
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,173) ([0,2944,511,0,8192,0,256,0,0,0,0,0,0,32,0,0,0,0,4,0,0,0,0,0,0,23552,472,32768,772,0,0,0,0,0,0,0,4096,0,0,60462,0,0,132,0,0,4,0,8192,0,0,64,0,0,8,0,1024,0,0,16,0,32768,2048,16384,256,0,0,515,0,23552,472,0,8192,1,0,30295,0,47104,944,0,2048,256,512,0,0,28672,1889,0,0,4,16384,0,0,0,0,0,0,0,0,45240,3,0,0,0,0,2048,0,520,0,0,0,2,23552,472,8192,0,0,0,0,0,0,0,0,0,256,0,2316,0,0,0,0,1,0,0,55388,1,0,16,0,0,0,0,512,0,0,16,0,0,1,0,2048,0,0,0,0,8,4096,0,53984,14,0,0,0,47104,944,0,0,0,0,0,0,0,128,0,32,512,0,55900,1,0,0,0,5888,118,0,0,0,0,0,1,0,16,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,16,256,0,0,0,0,0,0,2944,59,0,0,0,0,0,0,64,1024,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Stm","Exp","Args","Case","Case1","Pattern","Pattern1","Const","Exps","Exp1","TypeDef","Type","\"->\"","\"=>\"","\"<-\"","\"::=\"","\"|\"","\":\"","\";\"","\",\"","\"\955\"","str","chr","\":=\"","\"(\"","\")\"","\"{\"","\"}\"","\"?\"","ident","int","type","hole","pattern","case","export","instance","class","binop","%eof"]
        bit_start = st Prelude.* 43
        bit_end = (st Prelude.+ 1) Prelude.* 43
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..42]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (24) = happyShift action_6
action_0 (25) = happyShift action_7
action_0 (26) = happyShift action_8
action_0 (28) = happyShift action_9
action_0 (33) = happyShift action_10
action_0 (34) = happyShift action_11
action_0 (35) = happyShift action_2
action_0 (36) = happyShift action_12
action_0 (37) = happyShift action_13
action_0 (38) = happyShift action_14
action_0 (39) = happyShift action_15
action_0 (40) = happyShift action_16
action_0 (41) = happyShift action_17
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 (11) = happyGoto action_5
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (35) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (19) = happyShift action_32
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (43) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (42) = happyShift action_31
action_4 _ = happyReduce_10

action_5 _ = happyReduce_17

action_6 (33) = happyShift action_30
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_31

action_8 _ = happyReduce_32

action_9 (24) = happyShift action_6
action_9 (25) = happyShift action_7
action_9 (26) = happyShift action_8
action_9 (28) = happyShift action_9
action_9 (33) = happyShift action_23
action_9 (34) = happyShift action_11
action_9 (36) = happyShift action_12
action_9 (37) = happyShift action_13
action_9 (38) = happyShift action_14
action_9 (5) = happyGoto action_29
action_9 (11) = happyGoto action_5
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (18) = happyShift action_25
action_10 (21) = happyShift action_26
action_10 (27) = happyShift action_27
action_10 (28) = happyShift action_28
action_10 _ = happyReduce_15

action_11 _ = happyReduce_30

action_12 _ = happyReduce_20

action_13 (30) = happyShift action_24
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (24) = happyShift action_6
action_14 (25) = happyShift action_7
action_14 (26) = happyShift action_8
action_14 (28) = happyShift action_9
action_14 (33) = happyShift action_23
action_14 (34) = happyShift action_11
action_14 (36) = happyShift action_12
action_14 (37) = happyShift action_13
action_14 (38) = happyShift action_14
action_14 (5) = happyGoto action_22
action_14 (11) = happyGoto action_5
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (30) = happyShift action_20
action_15 (35) = happyShift action_21
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (35) = happyShift action_19
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (35) = happyShift action_18
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (33) = happyShift action_53
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (35) = happyShift action_52
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (31) = happyShift action_51
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (30) = happyShift action_50
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (30) = happyShift action_49
action_22 (42) = happyShift action_31
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (18) = happyShift action_25
action_23 (28) = happyShift action_28
action_23 _ = happyReduce_15

action_24 (25) = happyShift action_7
action_24 (26) = happyShift action_8
action_24 (34) = happyShift action_11
action_24 (9) = happyGoto action_46
action_24 (10) = happyGoto action_47
action_24 (11) = happyGoto action_48
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (24) = happyShift action_6
action_25 (25) = happyShift action_7
action_25 (26) = happyShift action_8
action_25 (28) = happyShift action_9
action_25 (33) = happyShift action_23
action_25 (34) = happyShift action_11
action_25 (36) = happyShift action_12
action_25 (37) = happyShift action_13
action_25 (38) = happyShift action_14
action_25 (5) = happyGoto action_45
action_25 (11) = happyGoto action_5
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (32) = happyShift action_43
action_26 (35) = happyShift action_44
action_26 (15) = happyGoto action_42
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (24) = happyShift action_6
action_27 (25) = happyShift action_7
action_27 (26) = happyShift action_8
action_27 (28) = happyShift action_9
action_27 (30) = happyShift action_41
action_27 (33) = happyShift action_23
action_27 (34) = happyShift action_11
action_27 (36) = happyShift action_12
action_27 (37) = happyShift action_13
action_27 (38) = happyShift action_14
action_27 (5) = happyGoto action_40
action_27 (11) = happyGoto action_5
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (24) = happyShift action_6
action_28 (25) = happyShift action_7
action_28 (26) = happyShift action_8
action_28 (28) = happyShift action_9
action_28 (33) = happyShift action_23
action_28 (34) = happyShift action_11
action_28 (36) = happyShift action_12
action_28 (37) = happyShift action_13
action_28 (38) = happyShift action_14
action_28 (5) = happyGoto action_38
action_28 (6) = happyGoto action_39
action_28 (11) = happyGoto action_5
action_28 _ = happyReduce_21

action_29 (29) = happyShift action_37
action_29 (42) = happyShift action_31
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (16) = happyShift action_36
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (24) = happyShift action_6
action_31 (25) = happyShift action_7
action_31 (26) = happyShift action_8
action_31 (28) = happyShift action_9
action_31 (33) = happyShift action_23
action_31 (34) = happyShift action_11
action_31 (36) = happyShift action_12
action_31 (37) = happyShift action_13
action_31 (38) = happyShift action_14
action_31 (5) = happyGoto action_35
action_31 (11) = happyGoto action_5
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (35) = happyShift action_34
action_32 (14) = happyGoto action_33
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (20) = happyShift action_70
action_33 _ = happyReduce_1

action_34 _ = happyReduce_36

action_35 _ = happyReduce_13

action_36 (24) = happyShift action_6
action_36 (25) = happyShift action_7
action_36 (26) = happyShift action_8
action_36 (28) = happyShift action_9
action_36 (33) = happyShift action_23
action_36 (34) = happyShift action_11
action_36 (36) = happyShift action_12
action_36 (37) = happyShift action_13
action_36 (38) = happyShift action_14
action_36 (5) = happyGoto action_69
action_36 (11) = happyGoto action_5
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_12

action_38 (42) = happyShift action_31
action_38 _ = happyReduce_22

action_39 (23) = happyShift action_67
action_39 (29) = happyShift action_68
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (42) = happyShift action_31
action_40 _ = happyReduce_4

action_41 (24) = happyShift action_6
action_41 (25) = happyShift action_7
action_41 (26) = happyShift action_8
action_41 (28) = happyShift action_9
action_41 (33) = happyShift action_23
action_41 (34) = happyShift action_11
action_41 (36) = happyShift action_12
action_41 (37) = happyShift action_13
action_41 (38) = happyShift action_14
action_41 (5) = happyGoto action_64
action_41 (11) = happyGoto action_5
action_41 (12) = happyGoto action_65
action_41 (13) = happyGoto action_66
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (16) = happyShift action_63
action_42 _ = happyReduce_2

action_43 _ = happyReduce_3

action_44 _ = happyReduce_38

action_45 (42) = happyShift action_31
action_45 _ = happyReduce_14

action_46 (25) = happyShift action_7
action_46 (26) = happyShift action_8
action_46 (31) = happyShift action_62
action_46 (34) = happyShift action_11
action_46 (10) = happyGoto action_61
action_46 (11) = happyGoto action_48
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_27

action_48 (17) = happyShift action_60
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (24) = happyShift action_6
action_49 (25) = happyShift action_7
action_49 (26) = happyShift action_8
action_49 (28) = happyShift action_9
action_49 (33) = happyShift action_23
action_49 (34) = happyShift action_11
action_49 (36) = happyShift action_12
action_49 (37) = happyShift action_13
action_49 (38) = happyShift action_14
action_49 (5) = happyGoto action_57
action_49 (7) = happyGoto action_58
action_49 (8) = happyGoto action_59
action_49 (11) = happyGoto action_5
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (31) = happyShift action_56
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_8

action_52 (30) = happyShift action_55
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (30) = happyShift action_54
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (31) = happyShift action_82
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (31) = happyShift action_81
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_7

action_57 (17) = happyShift action_80
action_57 (42) = happyShift action_31
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (24) = happyShift action_6
action_58 (25) = happyShift action_7
action_58 (26) = happyShift action_8
action_58 (28) = happyShift action_9
action_58 (31) = happyShift action_79
action_58 (33) = happyShift action_23
action_58 (34) = happyShift action_11
action_58 (36) = happyShift action_12
action_58 (37) = happyShift action_13
action_58 (38) = happyShift action_14
action_58 (5) = happyGoto action_57
action_58 (8) = happyGoto action_78
action_58 (11) = happyGoto action_5
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_24

action_60 (24) = happyShift action_6
action_60 (25) = happyShift action_7
action_60 (26) = happyShift action_8
action_60 (28) = happyShift action_9
action_60 (33) = happyShift action_23
action_60 (34) = happyShift action_11
action_60 (36) = happyShift action_12
action_60 (37) = happyShift action_13
action_60 (38) = happyShift action_14
action_60 (5) = happyGoto action_77
action_60 (11) = happyGoto action_5
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_28

action_62 _ = happyReduce_11

action_63 (35) = happyShift action_76
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (22) = happyShift action_75
action_64 (42) = happyShift action_31
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (24) = happyShift action_6
action_65 (25) = happyShift action_7
action_65 (26) = happyShift action_8
action_65 (28) = happyShift action_9
action_65 (31) = happyShift action_74
action_65 (33) = happyShift action_23
action_65 (34) = happyShift action_11
action_65 (36) = happyShift action_12
action_65 (37) = happyShift action_13
action_65 (38) = happyShift action_14
action_65 (5) = happyGoto action_64
action_65 (11) = happyGoto action_5
action_65 (13) = happyGoto action_73
action_65 _ = happyFail (happyExpListPerState 65)

action_66 _ = happyReduce_33

action_67 (24) = happyShift action_6
action_67 (25) = happyShift action_7
action_67 (26) = happyShift action_8
action_67 (28) = happyShift action_9
action_67 (33) = happyShift action_23
action_67 (34) = happyShift action_11
action_67 (36) = happyShift action_12
action_67 (37) = happyShift action_13
action_67 (38) = happyShift action_14
action_67 (5) = happyGoto action_72
action_67 (11) = happyGoto action_5
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_18

action_69 (42) = happyShift action_31
action_69 _ = happyReduce_16

action_70 (35) = happyShift action_71
action_70 _ = happyFail (happyExpListPerState 70)

action_71 _ = happyReduce_37

action_72 (42) = happyShift action_31
action_72 _ = happyReduce_23

action_73 _ = happyReduce_34

action_74 _ = happyReduce_5

action_75 _ = happyReduce_35

action_76 _ = happyReduce_39

action_77 (22) = happyShift action_84
action_77 (42) = happyShift action_31
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_25

action_79 _ = happyReduce_19

action_80 (24) = happyShift action_6
action_80 (25) = happyShift action_7
action_80 (26) = happyShift action_8
action_80 (28) = happyShift action_9
action_80 (33) = happyShift action_23
action_80 (34) = happyShift action_11
action_80 (36) = happyShift action_12
action_80 (37) = happyShift action_13
action_80 (38) = happyShift action_14
action_80 (5) = happyGoto action_83
action_80 (11) = happyGoto action_5
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_9

action_82 _ = happyReduce_6

action_83 (22) = happyShift action_85
action_83 (42) = happyShift action_31
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_29

action_85 _ = happyReduce_26

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn14  happy_var_3)
	_
	(HappyTerminal (TokenType  happy_var_1))
	 =  HappyAbsSyn4
		 (TypeStm happy_var_1 happy_var_3
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_3  4 happyReduction_2
happyReduction_2 (HappyAbsSyn15  happy_var_3)
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
		 (FuncStm happy_var_1 [happy_var_3]
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happyReduce 5 4 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (FuncStm happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 5 4 happyReduction_6
happyReduction_6 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Class
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 4 4 happyReduction_7
happyReduction_7 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenType  happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Export happy_var_2
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 _
	_
	_
	 =  HappyAbsSyn4
		 (Export "Main"
	)

happyReduce_9 = happyReduce 5 4 happyReduction_9
happyReduction_9 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Instance
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_1  4 happyReduction_10
happyReduction_10 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (Eval happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happyReduce 4 5 happyReduction_11
happyReduction_11 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (PatternExp   happy_var_3
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_3  5 happyReduction_12
happyReduction_12 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  5 happyReduction_13
happyReduction_13 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (BinOp happy_var_2))
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (OpExp  happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  5 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn5
		 (LetExp    happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  5 happyReduction_15
happyReduction_15 (HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn5
		 (VarExp       happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happyReduce 4 5 happyReduction_16
happyReduction_16 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (LambdaExp happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_1  5 happyReduction_17
happyReduction_17 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn5
		 (ConstExp     happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happyReduce 4 5 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (CallExp   happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 5 5 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (CaseExp   happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_1  5 happyReduction_20
happyReduction_20 (HappyTerminal (TokenHole  happy_var_1))
	 =  HappyAbsSyn5
		 (HoleExp      happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_0  6 happyReduction_21
happyReduction_21  =  HappyAbsSyn6
		 ([    ]
	)

happyReduce_22 = happySpecReduce_1  6 happyReduction_22
happyReduction_22 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 ([ happy_var_1 ]
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  6 happyReduction_23
happyReduction_23 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_3 : happy_var_1
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  7 happyReduction_24
happyReduction_24 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 ([ happy_var_1 ]
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_2  7 happyReduction_25
happyReduction_25 (HappyAbsSyn8  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_2 : happy_var_1
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happyReduce 4 8 happyReduction_26
happyReduction_26 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 ((happy_var_1 , happy_var_3)
	) `HappyStk` happyRest

happyReduce_27 = happySpecReduce_1  9 happyReduction_27
happyReduction_27 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 ([ happy_var_1 ]
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  9 happyReduction_28
happyReduction_28 (HappyAbsSyn10  happy_var_2)
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_2 : happy_var_1
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happyReduce 4 10 happyReduction_29
happyReduction_29 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 ((happy_var_1 , happy_var_3)
	) `HappyStk` happyRest

happyReduce_30 = happySpecReduce_1  11 happyReduction_30
happyReduction_30 (HappyTerminal (TokenInt   happy_var_1))
	 =  HappyAbsSyn11
		 (Int32 happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  11 happyReduction_31
happyReduction_31 (HappyTerminal (TokenString happy_var_1))
	 =  HappyAbsSyn11
		 (Str   happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  11 happyReduction_32
happyReduction_32 (HappyTerminal (TokenChar   happy_var_1))
	 =  HappyAbsSyn11
		 (Chr   happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  12 happyReduction_33
happyReduction_33 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 ([ happy_var_1 ]
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_2  12 happyReduction_34
happyReduction_34 (HappyAbsSyn13  happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_2 : happy_var_1
	)
happyReduction_34 _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_2  13 happyReduction_35
happyReduction_35 _
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_35 _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  14 happyReduction_36
happyReduction_36 (HappyTerminal (TokenType  happy_var_1))
	 =  HappyAbsSyn14
		 ([ happy_var_1 ]
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  14 happyReduction_37
happyReduction_37 (HappyTerminal (TokenType  happy_var_3))
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_3 : happy_var_1
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  15 happyReduction_38
happyReduction_38 (HappyTerminal (TokenType  happy_var_1))
	 =  HappyAbsSyn15
		 ([ happy_var_1 ]
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  15 happyReduction_39
happyReduction_39 (HappyTerminal (TokenType  happy_var_3))
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_3 : happy_var_1
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 43 43 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenArrow -> cont 16;
	TokenDoubleArrow -> cont 17;
	TokenLeftArrow -> cont 18;
	TokenData -> cont 19;
	TokenPipe -> cont 20;
	TokenTypeSign -> cont 21;
	TokenSemi -> cont 22;
	TokenComma -> cont 23;
	TokenLambda -> cont 24;
	TokenString happy_dollar_dollar -> cont 25;
	TokenChar   happy_dollar_dollar -> cont 26;
	TokenAssign -> cont 27;
	TokenLParen -> cont 28;
	TokenRParen -> cont 29;
	TokenLBracket -> cont 30;
	TokenRBracket -> cont 31;
	TokenQMark -> cont 32;
	TokenIdent happy_dollar_dollar -> cont 33;
	TokenInt   happy_dollar_dollar -> cont 34;
	TokenType  happy_dollar_dollar -> cont 35;
	TokenHole  happy_dollar_dollar -> cont 36;
	Builtin "pattern" -> cont 37;
	Builtin "case" -> cont 38;
	Builtin "export" -> cont 39;
	Builtin "instance" -> cont 40;
	Builtin "class" -> cont 41;
	BinOp happy_dollar_dollar -> cont 42;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 43 tk tks = happyError' (tks, explist)
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

type Program = [ Stm ]

data Exp = PatternExp [ (Const, Exp) ]
         | VarExp Name
         | LambdaExp Name Exp
         | LetExp Name Exp
         | ConstExp Const
         | OpExp Name Exp Exp
         | CallExp Name [ Exp ]
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
         | FuncStm Name [ Exp ]
         | Class
         | Export String
         | Instance
         | Eval Exp
         deriving Show

type Name  = String

parse = print . calc . scanTokens
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
