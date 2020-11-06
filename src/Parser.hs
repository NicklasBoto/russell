{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import Data.List
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16
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
	| HappyAbsSyn16 t16

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,146) ([0,16384,1,0,40,0,1280,0,0,0,8448,0,4096,0,0,20480,0,0,0,0,16,0,8320,0,22016,31,2048,1024,0,0,0,0,0,0,0,0,15980,0,50560,7,32928,0,0,0,0,512,0,0,0,0,3979,0,0,0,32776,0,0,8,0,0,0,4096,4,0,0,0,514,0,0,0,0,65,0,15916,0,50560,7,0,258,0,7958,0,58048,3,22528,124,0,3979,0,0,2,256,1,0,2056,0,0,0,4096,4,49152,994,0,0,0,0,0,64,0,0,0,0,50560,7,512,0,0,8192,0,1056,0,0,128,0,4096,0,528,0,11264,62,8192,32,16384,0,1,32896,0,0,0,0,0,0,2048,2,0,0,0,0,0,50560,7,0,0,0,7958,0,0,0,32,128,16384,64,0,0,0,11264,62,0,0,0,0,0,4096,4,0,1024,4096,0,0,0,16,24576,497,0,0,0,50560,7,0,256,0,0,0,0,4,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Stms","Stm","Exp","Args","Case","Case1","Pattern","Pattern1","Const","Exps","Types","TypeDef","Type","\"->\"","\"=>\"","\"<-\"","\"::=\"","\":\"","\";\"","\",\"","str","chr","\"=\"","\"(\"","\")\"","\"{\"","\"}\"","ident","int","type","hole","case","binop","%eof"]
        bit_start = st Prelude.* 37
        bit_end = (st Prelude.+ 1) Prelude.* 37
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..36]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (31) = happyShift action_4
action_0 (33) = happyShift action_5
action_0 (4) = happyGoto action_6
action_0 (5) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (31) = happyShift action_4
action_1 (33) = happyShift action_5
action_1 (4) = happyGoto action_2
action_1 (5) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (31) = happyShift action_4
action_2 (33) = happyShift action_5
action_2 (5) = happyGoto action_7
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_2

action_4 (21) = happyShift action_9
action_4 (26) = happyShift action_10
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (20) = happyShift action_8
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (31) = happyShift action_4
action_6 (33) = happyShift action_5
action_6 (37) = happyAccept
action_6 (5) = happyGoto action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_1

action_8 (29) = happyShift action_26
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (27) = happyShift action_24
action_9 (33) = happyShift action_25
action_9 (14) = happyGoto action_22
action_9 (16) = happyGoto action_23
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (24) = happyShift action_13
action_10 (25) = happyShift action_14
action_10 (27) = happyShift action_15
action_10 (29) = happyShift action_16
action_10 (31) = happyShift action_17
action_10 (32) = happyShift action_18
action_10 (33) = happyShift action_19
action_10 (34) = happyShift action_20
action_10 (35) = happyShift action_21
action_10 (6) = happyGoto action_11
action_10 (12) = happyGoto action_12
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (21) = happyShift action_42
action_11 (36) = happyShift action_43
action_11 _ = happyReduce_7

action_12 _ = happyReduce_17

action_13 _ = happyReduce_33

action_14 _ = happyReduce_34

action_15 (24) = happyShift action_13
action_15 (25) = happyShift action_14
action_15 (27) = happyShift action_15
action_15 (28) = happyShift action_41
action_15 (31) = happyShift action_17
action_15 (32) = happyShift action_18
action_15 (33) = happyShift action_19
action_15 (34) = happyShift action_20
action_15 (35) = happyShift action_21
action_15 (6) = happyGoto action_40
action_15 (12) = happyGoto action_12
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (24) = happyShift action_13
action_16 (25) = happyShift action_14
action_16 (27) = happyShift action_15
action_16 (31) = happyShift action_17
action_16 (32) = happyShift action_18
action_16 (33) = happyShift action_19
action_16 (34) = happyShift action_20
action_16 (35) = happyShift action_21
action_16 (6) = happyGoto action_38
action_16 (12) = happyGoto action_12
action_16 (13) = happyGoto action_39
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (17) = happyShift action_35
action_17 (19) = happyShift action_36
action_17 (27) = happyShift action_37
action_17 _ = happyReduce_15

action_18 _ = happyReduce_32

action_19 (27) = happyShift action_34
action_19 _ = happyReduce_19

action_20 _ = happyReduce_22

action_21 (24) = happyShift action_13
action_21 (25) = happyShift action_14
action_21 (27) = happyShift action_15
action_21 (31) = happyShift action_17
action_21 (32) = happyShift action_18
action_21 (33) = happyShift action_19
action_21 (34) = happyShift action_20
action_21 (35) = happyShift action_21
action_21 (6) = happyGoto action_33
action_21 (12) = happyGoto action_12
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (29) = happyShift action_32
action_22 _ = happyReduce_41

action_23 (17) = happyShift action_30
action_23 (29) = happyShift action_31
action_23 _ = happyReduce_4

action_24 (28) = happyShift action_29
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_37

action_26 (27) = happyShift action_24
action_26 (33) = happyShift action_25
action_26 (14) = happyGoto action_27
action_26 (15) = happyGoto action_28
action_26 _ = happyFail (happyExpListPerState 26)

action_27 _ = happyReduce_39

action_28 (22) = happyShift action_61
action_28 (30) = happyShift action_62
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_38

action_30 (27) = happyShift action_24
action_30 (33) = happyShift action_25
action_30 (14) = happyGoto action_60
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (24) = happyShift action_13
action_31 (25) = happyShift action_14
action_31 (27) = happyShift action_15
action_31 (31) = happyShift action_17
action_31 (32) = happyShift action_18
action_31 (33) = happyShift action_19
action_31 (34) = happyShift action_20
action_31 (35) = happyShift action_21
action_31 (6) = happyGoto action_57
action_31 (10) = happyGoto action_58
action_31 (11) = happyGoto action_59
action_31 (12) = happyGoto action_12
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (24) = happyShift action_13
action_32 (25) = happyShift action_14
action_32 (27) = happyShift action_15
action_32 (31) = happyShift action_17
action_32 (32) = happyShift action_18
action_32 (33) = happyShift action_19
action_32 (34) = happyShift action_20
action_32 (35) = happyShift action_21
action_32 (6) = happyGoto action_38
action_32 (12) = happyGoto action_12
action_32 (13) = happyGoto action_56
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (29) = happyShift action_55
action_33 (36) = happyShift action_43
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (24) = happyShift action_13
action_34 (25) = happyShift action_14
action_34 (27) = happyShift action_15
action_34 (31) = happyShift action_17
action_34 (32) = happyShift action_18
action_34 (33) = happyShift action_19
action_34 (34) = happyShift action_20
action_34 (35) = happyShift action_21
action_34 (6) = happyGoto action_50
action_34 (7) = happyGoto action_54
action_34 (12) = happyGoto action_12
action_34 _ = happyReduce_23

action_35 (24) = happyShift action_13
action_35 (25) = happyShift action_14
action_35 (27) = happyShift action_15
action_35 (31) = happyShift action_17
action_35 (32) = happyShift action_18
action_35 (33) = happyShift action_19
action_35 (34) = happyShift action_20
action_35 (35) = happyShift action_21
action_35 (6) = happyGoto action_53
action_35 (12) = happyGoto action_12
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (24) = happyShift action_13
action_36 (25) = happyShift action_14
action_36 (27) = happyShift action_15
action_36 (31) = happyShift action_17
action_36 (32) = happyShift action_18
action_36 (33) = happyShift action_19
action_36 (34) = happyShift action_20
action_36 (35) = happyShift action_21
action_36 (6) = happyGoto action_52
action_36 (12) = happyGoto action_12
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (24) = happyShift action_13
action_37 (25) = happyShift action_14
action_37 (27) = happyShift action_15
action_37 (31) = happyShift action_17
action_37 (32) = happyShift action_18
action_37 (33) = happyShift action_19
action_37 (34) = happyShift action_20
action_37 (35) = happyShift action_21
action_37 (6) = happyGoto action_50
action_37 (7) = happyGoto action_51
action_37 (12) = happyGoto action_12
action_37 _ = happyReduce_23

action_38 (36) = happyShift action_43
action_38 _ = happyReduce_35

action_39 (22) = happyShift action_48
action_39 (30) = happyShift action_49
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (28) = happyShift action_47
action_40 (36) = happyShift action_43
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_12

action_42 (27) = happyShift action_24
action_42 (33) = happyShift action_25
action_42 (14) = happyGoto action_45
action_42 (16) = happyGoto action_46
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (24) = happyShift action_13
action_43 (25) = happyShift action_14
action_43 (27) = happyShift action_15
action_43 (31) = happyShift action_17
action_43 (32) = happyShift action_18
action_43 (33) = happyShift action_19
action_43 (34) = happyShift action_20
action_43 (35) = happyShift action_21
action_43 (6) = happyGoto action_44
action_43 (12) = happyGoto action_12
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_13

action_45 _ = happyReduce_41

action_46 (17) = happyShift action_30
action_46 _ = happyReduce_8

action_47 _ = happyReduce_11

action_48 (24) = happyShift action_13
action_48 (25) = happyShift action_14
action_48 (27) = happyShift action_15
action_48 (31) = happyShift action_17
action_48 (32) = happyShift action_18
action_48 (33) = happyShift action_19
action_48 (34) = happyShift action_20
action_48 (35) = happyShift action_21
action_48 (6) = happyGoto action_75
action_48 (12) = happyGoto action_12
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (21) = happyShift action_74
action_49 _ = happyReduce_9

action_50 (36) = happyShift action_43
action_50 _ = happyReduce_24

action_51 (23) = happyShift action_71
action_51 (28) = happyShift action_73
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (36) = happyShift action_43
action_52 _ = happyReduce_14

action_53 (36) = happyShift action_43
action_53 _ = happyReduce_16

action_54 (23) = happyShift action_71
action_54 (28) = happyShift action_72
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (24) = happyShift action_13
action_55 (25) = happyShift action_14
action_55 (27) = happyShift action_15
action_55 (31) = happyShift action_17
action_55 (32) = happyShift action_18
action_55 (33) = happyShift action_19
action_55 (34) = happyShift action_20
action_55 (35) = happyShift action_21
action_55 (6) = happyGoto action_68
action_55 (8) = happyGoto action_69
action_55 (9) = happyGoto action_70
action_55 (12) = happyGoto action_12
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (22) = happyShift action_48
action_56 (30) = happyShift action_67
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (18) = happyShift action_66
action_57 (36) = happyShift action_43
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (22) = happyShift action_64
action_58 (30) = happyShift action_65
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_29

action_60 _ = happyReduce_42

action_61 (27) = happyShift action_24
action_61 (33) = happyShift action_25
action_61 (14) = happyGoto action_63
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_3

action_63 _ = happyReduce_40

action_64 (24) = happyShift action_13
action_64 (25) = happyShift action_14
action_64 (27) = happyShift action_15
action_64 (31) = happyShift action_17
action_64 (32) = happyShift action_18
action_64 (33) = happyShift action_19
action_64 (34) = happyShift action_20
action_64 (35) = happyShift action_21
action_64 (6) = happyGoto action_57
action_64 (11) = happyGoto action_82
action_64 (12) = happyGoto action_12
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_6

action_66 (24) = happyShift action_13
action_66 (25) = happyShift action_14
action_66 (27) = happyShift action_15
action_66 (31) = happyShift action_17
action_66 (32) = happyShift action_18
action_66 (33) = happyShift action_19
action_66 (34) = happyShift action_20
action_66 (35) = happyShift action_21
action_66 (6) = happyGoto action_81
action_66 (12) = happyGoto action_12
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_5

action_68 (18) = happyShift action_80
action_68 (36) = happyShift action_43
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (22) = happyShift action_78
action_69 (30) = happyShift action_79
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_26

action_71 (24) = happyShift action_13
action_71 (25) = happyShift action_14
action_71 (27) = happyShift action_15
action_71 (31) = happyShift action_17
action_71 (32) = happyShift action_18
action_71 (33) = happyShift action_19
action_71 (34) = happyShift action_20
action_71 (35) = happyShift action_21
action_71 (6) = happyGoto action_77
action_71 (12) = happyGoto action_12
action_71 _ = happyFail (happyExpListPerState 71)

action_72 _ = happyReduce_20

action_73 _ = happyReduce_18

action_74 (27) = happyShift action_24
action_74 (33) = happyShift action_25
action_74 (14) = happyGoto action_45
action_74 (16) = happyGoto action_76
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (36) = happyShift action_43
action_75 _ = happyReduce_36

action_76 (17) = happyShift action_30
action_76 _ = happyReduce_10

action_77 (36) = happyShift action_43
action_77 _ = happyReduce_25

action_78 (24) = happyShift action_13
action_78 (25) = happyShift action_14
action_78 (27) = happyShift action_15
action_78 (31) = happyShift action_17
action_78 (32) = happyShift action_18
action_78 (33) = happyShift action_19
action_78 (34) = happyShift action_20
action_78 (35) = happyShift action_21
action_78 (6) = happyGoto action_68
action_78 (9) = happyGoto action_84
action_78 (12) = happyGoto action_12
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_21

action_80 (24) = happyShift action_13
action_80 (25) = happyShift action_14
action_80 (27) = happyShift action_15
action_80 (31) = happyShift action_17
action_80 (32) = happyShift action_18
action_80 (33) = happyShift action_19
action_80 (34) = happyShift action_20
action_80 (35) = happyShift action_21
action_80 (6) = happyGoto action_83
action_80 (12) = happyGoto action_12
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (36) = happyShift action_43
action_81 _ = happyReduce_31

action_82 _ = happyReduce_30

action_83 (36) = happyShift action_43
action_83 _ = happyReduce_28

action_84 _ = happyReduce_27

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
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenType  _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TypeStm       happy_var_1 (reverse happy_var_4)
	) `HappyStk` happyRest

happyReduce_4 = happySpecReduce_3  5 happyReduction_4
happyReduction_4 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (TokenIdent _ happy_var_1))
	 =  HappyAbsSyn5
		 (SignStm       happy_var_1 (reverse happy_var_3)
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happyReduce 6 5 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncStm       happy_var_1 (reverse happy_var_5) [happy_var_3]
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 6 5 happyReduction_6
happyReduction_6 (_ `HappyStk`
	(HappyAbsSyn10  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (PatternStm happy_var_1    (reverse happy_var_3) (reverse happy_var_5)
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_3  5 happyReduction_7
happyReduction_7 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenIdent _ happy_var_1))
	 =  HappyAbsSyn5
		 (FuncStm  happy_var_1 [happy_var_3] []
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happyReduce 5 5 happyReduction_8
happyReduction_8 ((HappyAbsSyn16  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncStm  happy_var_1 [happy_var_3] (reverse happy_var_5)
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 5 5 happyReduction_9
happyReduction_9 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncStm  happy_var_1      (reverse happy_var_4)  []
	) `HappyStk` happyRest

happyReduce_10 = happyReduce 7 5 happyReduction_10
happyReduction_10 ((HappyAbsSyn16  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncStm  happy_var_1      (reverse happy_var_4)  (reverse happy_var_7)
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_3  6 happyReduction_11
happyReduction_11 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  6 happyReduction_12
happyReduction_12 _
	_
	 =  HappyAbsSyn6
		 (VoidExp
	)

happyReduce_13 = happySpecReduce_3  6 happyReduction_13
happyReduction_13 (HappyAbsSyn6  happy_var_3)
	(HappyTerminal (BinOp _ happy_var_2))
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (OpExp  happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  6 happyReduction_14
happyReduction_14 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenIdent _ happy_var_1))
	 =  HappyAbsSyn6
		 (LetExp    happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  6 happyReduction_15
happyReduction_15 (HappyTerminal (TokenIdent _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarExp       happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  6 happyReduction_16
happyReduction_16 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenIdent _ happy_var_1))
	 =  HappyAbsSyn6
		 (LambdaExp happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  6 happyReduction_17
happyReduction_17 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn6
		 (ConstExp     happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happyReduce 4 6 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (CallExp   happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_1  6 happyReduction_19
happyReduction_19 (HappyTerminal (TokenType  _ happy_var_1))
	 =  HappyAbsSyn6
		 (TypeCon   happy_var_1 []
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happyReduce 4 6 happyReduction_20
happyReduction_20 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenType  _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TypeCon   happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 5 6 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (CaseExp   happy_var_2 (reverse happy_var_4)
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_1  6 happyReduction_22
happyReduction_22 (HappyTerminal (TokenHole  _ happy_var_1))
	 =  HappyAbsSyn6
		 (HoleExp      happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_0  7 happyReduction_23
happyReduction_23  =  HappyAbsSyn7
		 ([    ]
	)

happyReduce_24 = happySpecReduce_1  7 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 ([ happy_var_1 ]
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  7 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_3 : happy_var_1
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  8 happyReduction_26
happyReduction_26 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 ([ happy_var_1 ]
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  8 happyReduction_27
happyReduction_27 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_3 : happy_var_1
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  9 happyReduction_28
happyReduction_28 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn9
		 ((happy_var_1 , happy_var_3)
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  10 happyReduction_29
happyReduction_29 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 ([ happy_var_1 ]
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  10 happyReduction_30
happyReduction_30 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_3 : happy_var_1
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  11 happyReduction_31
happyReduction_31 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn11
		 ((happy_var_1 , happy_var_3)
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  12 happyReduction_32
happyReduction_32 (HappyTerminal (TokenInt   _ happy_var_1))
	 =  HappyAbsSyn12
		 (Int32 happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  12 happyReduction_33
happyReduction_33 (HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn12
		 (Str   happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  12 happyReduction_34
happyReduction_34 (HappyTerminal (TokenChar   _ happy_var_1))
	 =  HappyAbsSyn12
		 (Chr   happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  13 happyReduction_35
happyReduction_35 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn13
		 ([ happy_var_1 ]
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  13 happyReduction_36
happyReduction_36 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_3 : happy_var_1
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  14 happyReduction_37
happyReduction_37 (HappyTerminal (TokenType  _ happy_var_1))
	 =  HappyAbsSyn14
		 (TypeN happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_2  14 happyReduction_38
happyReduction_38 _
	_
	 =  HappyAbsSyn14
		 (VoidType
	)

happyReduce_39 = happySpecReduce_1  15 happyReduction_39
happyReduction_39 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn15
		 ([ happy_var_1 ]
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  15 happyReduction_40
happyReduction_40 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_3 : happy_var_1
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  16 happyReduction_41
happyReduction_41 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn16
		 ([ happy_var_1 ]
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  16 happyReduction_42
happyReduction_42 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_3 : happy_var_1
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 37 37 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenArrow       _ -> cont 17;
	TokenDoubleArrow _ -> cont 18;
	TokenLeftArrow   _ -> cont 19;
	TokenData        _ -> cont 20;
	TokenTypeSign    _ -> cont 21;
	TokenSemi        _ -> cont 22;
	TokenComma       _ -> cont 23;
	TokenString _ happy_dollar_dollar -> cont 24;
	TokenChar   _ happy_dollar_dollar -> cont 25;
	TokenAssign      _ -> cont 26;
	TokenLParen      _ -> cont 27;
	TokenRParen      _ -> cont 28;
	TokenLBracket    _ -> cont 29;
	TokenRBracket    _ -> cont 30;
	TokenIdent _ happy_dollar_dollar -> cont 31;
	TokenInt   _ happy_dollar_dollar -> cont 32;
	TokenType  _ happy_dollar_dollar -> cont 33;
	TokenHole  _ happy_dollar_dollar -> cont 34;
	Builtin _ "case" -> cont 35;
	BinOp _ happy_dollar_dollar -> cont 36;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 37 tk tks = happyError' (tks, explist)
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
