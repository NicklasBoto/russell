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
happyExpList = Happy_Data_Array.listArray (0,163) ([0,16384,2,0,144,0,9216,0,0,0,4096,2,0,2,0,0,36,0,0,0,4096,0,0,129,0,64856,0,64,64,0,0,0,0,0,0,0,0,16182,0,50560,15,320,1,0,64,0,0,0,0,4,0,0,0,22528,252,0,0,0,4097,0,0,2,0,0,0,4096,8,0,0,0,2056,0,0,0,0,2064,0,50560,15,24576,1009,0,256,1,5632,63,32768,4037,0,61792,3,22528,252,0,16150,0,0,16,2048,8,0,128,1,0,0,0,516,0,61792,3,0,0,0,0,0,1,0,0,0,0,64600,0,64,0,0,4096,0,528,0,0,256,0,16384,0,2112,0,4096,2,0,64600,0,32896,0,512,4096,0,2056,0,0,0,0,0,0,1024,2,0,0,0,0,0,5632,63,0,0,0,61792,3,0,0,2048,16384,0,8224,0,0,0,0,64600,0,0,0,0,0,0,0,0,16384,32,0,16384,0,1,0,0,1024,0,64600,0,0,0,32768,4037,0,0,4,0,0,0,16384,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Stms","Stm","Exp","Args","Case","Case1","Pattern","Pattern1","Const","Exps","Types","TypeDef","Type","\"->\"","\"=>\"","\"<-\"","\"::=\"","\":\"","\";\"","\",\"","str","chr","\"=\"","\"(\"","\")\"","\"{\"","\"}\"","ident","macro","int","type","hole","case","binop","%eof"]
        bit_start = st Prelude.* 38
        bit_end = (st Prelude.+ 1) Prelude.* 38
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..37]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (31) = happyShift action_4
action_0 (34) = happyShift action_5
action_0 (4) = happyGoto action_6
action_0 (5) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (31) = happyShift action_4
action_1 (34) = happyShift action_5
action_1 (4) = happyGoto action_2
action_1 (5) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (31) = happyShift action_4
action_2 (34) = happyShift action_5
action_2 (5) = happyGoto action_7
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_2

action_4 (21) = happyShift action_9
action_4 (26) = happyShift action_10
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (20) = happyShift action_8
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (31) = happyShift action_4
action_6 (34) = happyShift action_5
action_6 (38) = happyAccept
action_6 (5) = happyGoto action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_1

action_8 (29) = happyShift action_27
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (27) = happyShift action_25
action_9 (34) = happyShift action_26
action_9 (14) = happyGoto action_23
action_9 (16) = happyGoto action_24
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
action_10 (36) = happyShift action_22
action_10 (6) = happyGoto action_11
action_10 (12) = happyGoto action_12
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (21) = happyShift action_44
action_11 (37) = happyShift action_45
action_11 _ = happyReduce_7

action_12 _ = happyReduce_17

action_13 _ = happyReduce_34

action_14 _ = happyReduce_35

action_15 (24) = happyShift action_13
action_15 (25) = happyShift action_14
action_15 (27) = happyShift action_15
action_15 (28) = happyShift action_43
action_15 (31) = happyShift action_17
action_15 (32) = happyShift action_18
action_15 (33) = happyShift action_19
action_15 (34) = happyShift action_20
action_15 (35) = happyShift action_21
action_15 (36) = happyShift action_22
action_15 (6) = happyGoto action_42
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
action_16 (36) = happyShift action_22
action_16 (6) = happyGoto action_40
action_16 (12) = happyGoto action_12
action_16 (13) = happyGoto action_41
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (17) = happyShift action_37
action_17 (19) = happyShift action_38
action_17 (27) = happyShift action_39
action_17 _ = happyReduce_15

action_18 (27) = happyShift action_36
action_18 _ = happyFail (happyExpListPerState 18)

action_19 _ = happyReduce_33

action_20 (27) = happyShift action_35
action_20 _ = happyReduce_20

action_21 _ = happyReduce_23

action_22 (24) = happyShift action_13
action_22 (25) = happyShift action_14
action_22 (27) = happyShift action_15
action_22 (31) = happyShift action_17
action_22 (32) = happyShift action_18
action_22 (33) = happyShift action_19
action_22 (34) = happyShift action_20
action_22 (35) = happyShift action_21
action_22 (36) = happyShift action_22
action_22 (6) = happyGoto action_34
action_22 (12) = happyGoto action_12
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (29) = happyShift action_33
action_23 _ = happyReduce_42

action_24 (17) = happyShift action_31
action_24 (29) = happyShift action_32
action_24 _ = happyReduce_4

action_25 (28) = happyShift action_30
action_25 _ = happyFail (happyExpListPerState 25)

action_26 _ = happyReduce_38

action_27 (27) = happyShift action_25
action_27 (34) = happyShift action_26
action_27 (14) = happyGoto action_28
action_27 (15) = happyGoto action_29
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_40

action_29 (22) = happyShift action_64
action_29 (30) = happyShift action_65
action_29 _ = happyFail (happyExpListPerState 29)

action_30 _ = happyReduce_39

action_31 (27) = happyShift action_25
action_31 (34) = happyShift action_26
action_31 (14) = happyGoto action_63
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (24) = happyShift action_13
action_32 (25) = happyShift action_14
action_32 (27) = happyShift action_15
action_32 (31) = happyShift action_17
action_32 (32) = happyShift action_18
action_32 (33) = happyShift action_19
action_32 (34) = happyShift action_20
action_32 (35) = happyShift action_21
action_32 (36) = happyShift action_22
action_32 (6) = happyGoto action_60
action_32 (10) = happyGoto action_61
action_32 (11) = happyGoto action_62
action_32 (12) = happyGoto action_12
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (24) = happyShift action_13
action_33 (25) = happyShift action_14
action_33 (27) = happyShift action_15
action_33 (31) = happyShift action_17
action_33 (32) = happyShift action_18
action_33 (33) = happyShift action_19
action_33 (34) = happyShift action_20
action_33 (35) = happyShift action_21
action_33 (36) = happyShift action_22
action_33 (6) = happyGoto action_40
action_33 (12) = happyGoto action_12
action_33 (13) = happyGoto action_59
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (29) = happyShift action_58
action_34 (37) = happyShift action_45
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (24) = happyShift action_13
action_35 (25) = happyShift action_14
action_35 (27) = happyShift action_15
action_35 (31) = happyShift action_17
action_35 (32) = happyShift action_18
action_35 (33) = happyShift action_19
action_35 (34) = happyShift action_20
action_35 (35) = happyShift action_21
action_35 (36) = happyShift action_22
action_35 (6) = happyGoto action_52
action_35 (7) = happyGoto action_57
action_35 (12) = happyGoto action_12
action_35 _ = happyReduce_24

action_36 (24) = happyShift action_13
action_36 (25) = happyShift action_14
action_36 (27) = happyShift action_15
action_36 (31) = happyShift action_17
action_36 (32) = happyShift action_18
action_36 (33) = happyShift action_19
action_36 (34) = happyShift action_20
action_36 (35) = happyShift action_21
action_36 (36) = happyShift action_22
action_36 (6) = happyGoto action_52
action_36 (7) = happyGoto action_56
action_36 (12) = happyGoto action_12
action_36 _ = happyReduce_24

action_37 (24) = happyShift action_13
action_37 (25) = happyShift action_14
action_37 (27) = happyShift action_15
action_37 (31) = happyShift action_17
action_37 (32) = happyShift action_18
action_37 (33) = happyShift action_19
action_37 (34) = happyShift action_20
action_37 (35) = happyShift action_21
action_37 (36) = happyShift action_22
action_37 (6) = happyGoto action_55
action_37 (12) = happyGoto action_12
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (24) = happyShift action_13
action_38 (25) = happyShift action_14
action_38 (27) = happyShift action_15
action_38 (31) = happyShift action_17
action_38 (32) = happyShift action_18
action_38 (33) = happyShift action_19
action_38 (34) = happyShift action_20
action_38 (35) = happyShift action_21
action_38 (36) = happyShift action_22
action_38 (6) = happyGoto action_54
action_38 (12) = happyGoto action_12
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (24) = happyShift action_13
action_39 (25) = happyShift action_14
action_39 (27) = happyShift action_15
action_39 (31) = happyShift action_17
action_39 (32) = happyShift action_18
action_39 (33) = happyShift action_19
action_39 (34) = happyShift action_20
action_39 (35) = happyShift action_21
action_39 (36) = happyShift action_22
action_39 (6) = happyGoto action_52
action_39 (7) = happyGoto action_53
action_39 (12) = happyGoto action_12
action_39 _ = happyReduce_24

action_40 (37) = happyShift action_45
action_40 _ = happyReduce_36

action_41 (22) = happyShift action_50
action_41 (30) = happyShift action_51
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (28) = happyShift action_49
action_42 (37) = happyShift action_45
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_12

action_44 (27) = happyShift action_25
action_44 (34) = happyShift action_26
action_44 (14) = happyGoto action_47
action_44 (16) = happyGoto action_48
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (24) = happyShift action_13
action_45 (25) = happyShift action_14
action_45 (27) = happyShift action_15
action_45 (31) = happyShift action_17
action_45 (32) = happyShift action_18
action_45 (33) = happyShift action_19
action_45 (34) = happyShift action_20
action_45 (35) = happyShift action_21
action_45 (36) = happyShift action_22
action_45 (6) = happyGoto action_46
action_45 (12) = happyGoto action_12
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_13

action_47 _ = happyReduce_42

action_48 (17) = happyShift action_31
action_48 _ = happyReduce_8

action_49 _ = happyReduce_11

action_50 (24) = happyShift action_13
action_50 (25) = happyShift action_14
action_50 (27) = happyShift action_15
action_50 (31) = happyShift action_17
action_50 (32) = happyShift action_18
action_50 (33) = happyShift action_19
action_50 (34) = happyShift action_20
action_50 (35) = happyShift action_21
action_50 (36) = happyShift action_22
action_50 (6) = happyGoto action_79
action_50 (12) = happyGoto action_12
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (21) = happyShift action_78
action_51 _ = happyReduce_9

action_52 (37) = happyShift action_45
action_52 _ = happyReduce_25

action_53 (23) = happyShift action_74
action_53 (28) = happyShift action_77
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (37) = happyShift action_45
action_54 _ = happyReduce_14

action_55 (37) = happyShift action_45
action_55 _ = happyReduce_16

action_56 (23) = happyShift action_74
action_56 (28) = happyShift action_76
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (23) = happyShift action_74
action_57 (28) = happyShift action_75
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (24) = happyShift action_13
action_58 (25) = happyShift action_14
action_58 (27) = happyShift action_15
action_58 (31) = happyShift action_17
action_58 (32) = happyShift action_18
action_58 (33) = happyShift action_19
action_58 (34) = happyShift action_20
action_58 (35) = happyShift action_21
action_58 (36) = happyShift action_22
action_58 (6) = happyGoto action_71
action_58 (8) = happyGoto action_72
action_58 (9) = happyGoto action_73
action_58 (12) = happyGoto action_12
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (22) = happyShift action_50
action_59 (30) = happyShift action_70
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (18) = happyShift action_69
action_60 (37) = happyShift action_45
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (22) = happyShift action_67
action_61 (30) = happyShift action_68
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_30

action_63 _ = happyReduce_43

action_64 (27) = happyShift action_25
action_64 (34) = happyShift action_26
action_64 (14) = happyGoto action_66
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_3

action_66 _ = happyReduce_41

action_67 (24) = happyShift action_13
action_67 (25) = happyShift action_14
action_67 (27) = happyShift action_15
action_67 (31) = happyShift action_17
action_67 (32) = happyShift action_18
action_67 (33) = happyShift action_19
action_67 (34) = happyShift action_20
action_67 (35) = happyShift action_21
action_67 (36) = happyShift action_22
action_67 (6) = happyGoto action_60
action_67 (11) = happyGoto action_86
action_67 (12) = happyGoto action_12
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_6

action_69 (24) = happyShift action_13
action_69 (25) = happyShift action_14
action_69 (27) = happyShift action_15
action_69 (31) = happyShift action_17
action_69 (32) = happyShift action_18
action_69 (33) = happyShift action_19
action_69 (34) = happyShift action_20
action_69 (35) = happyShift action_21
action_69 (36) = happyShift action_22
action_69 (6) = happyGoto action_85
action_69 (12) = happyGoto action_12
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_5

action_71 (18) = happyShift action_84
action_71 (37) = happyShift action_45
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (22) = happyShift action_82
action_72 (30) = happyShift action_83
action_72 _ = happyFail (happyExpListPerState 72)

action_73 _ = happyReduce_27

action_74 (24) = happyShift action_13
action_74 (25) = happyShift action_14
action_74 (27) = happyShift action_15
action_74 (31) = happyShift action_17
action_74 (32) = happyShift action_18
action_74 (33) = happyShift action_19
action_74 (34) = happyShift action_20
action_74 (35) = happyShift action_21
action_74 (36) = happyShift action_22
action_74 (6) = happyGoto action_81
action_74 (12) = happyGoto action_12
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_21

action_76 _ = happyReduce_19

action_77 _ = happyReduce_18

action_78 (27) = happyShift action_25
action_78 (34) = happyShift action_26
action_78 (14) = happyGoto action_47
action_78 (16) = happyGoto action_80
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (37) = happyShift action_45
action_79 _ = happyReduce_37

action_80 (17) = happyShift action_31
action_80 _ = happyReduce_10

action_81 (37) = happyShift action_45
action_81 _ = happyReduce_26

action_82 (24) = happyShift action_13
action_82 (25) = happyShift action_14
action_82 (27) = happyShift action_15
action_82 (31) = happyShift action_17
action_82 (32) = happyShift action_18
action_82 (33) = happyShift action_19
action_82 (34) = happyShift action_20
action_82 (35) = happyShift action_21
action_82 (36) = happyShift action_22
action_82 (6) = happyGoto action_71
action_82 (9) = happyGoto action_88
action_82 (12) = happyGoto action_12
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_22

action_84 (24) = happyShift action_13
action_84 (25) = happyShift action_14
action_84 (27) = happyShift action_15
action_84 (31) = happyShift action_17
action_84 (32) = happyShift action_18
action_84 (33) = happyShift action_19
action_84 (34) = happyShift action_20
action_84 (35) = happyShift action_21
action_84 (36) = happyShift action_22
action_84 (6) = happyGoto action_87
action_84 (12) = happyGoto action_12
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (37) = happyShift action_45
action_85 _ = happyReduce_32

action_86 _ = happyReduce_31

action_87 (37) = happyShift action_45
action_87 _ = happyReduce_29

action_88 _ = happyReduce_28

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

happyReduce_19 = happyReduce 4 6 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenMacroCall _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (MacroExp  happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_1  6 happyReduction_20
happyReduction_20 (HappyTerminal (TokenType  _ happy_var_1))
	 =  HappyAbsSyn6
		 (TypeCon   happy_var_1 []
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happyReduce 4 6 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenType  _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TypeCon   happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 5 6 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (CaseExp   happy_var_2 (reverse happy_var_4)
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_1  6 happyReduction_23
happyReduction_23 (HappyTerminal (TokenHole  _ happy_var_1))
	 =  HappyAbsSyn6
		 (HoleExp      happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_0  7 happyReduction_24
happyReduction_24  =  HappyAbsSyn7
		 ([    ]
	)

happyReduce_25 = happySpecReduce_1  7 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 ([ happy_var_1 ]
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  7 happyReduction_26
happyReduction_26 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_3 : happy_var_1
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  8 happyReduction_27
happyReduction_27 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 ([ happy_var_1 ]
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  8 happyReduction_28
happyReduction_28 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_3 : happy_var_1
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  9 happyReduction_29
happyReduction_29 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn9
		 ((happy_var_1 , happy_var_3)
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  10 happyReduction_30
happyReduction_30 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 ([ happy_var_1 ]
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  10 happyReduction_31
happyReduction_31 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_3 : happy_var_1
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  11 happyReduction_32
happyReduction_32 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn11
		 ((happy_var_1 , happy_var_3)
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  12 happyReduction_33
happyReduction_33 (HappyTerminal (TokenInt   _ happy_var_1))
	 =  HappyAbsSyn12
		 (Int32 happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  12 happyReduction_34
happyReduction_34 (HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn12
		 (Str   happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  12 happyReduction_35
happyReduction_35 (HappyTerminal (TokenChar   _ happy_var_1))
	 =  HappyAbsSyn12
		 (Chr   happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  13 happyReduction_36
happyReduction_36 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn13
		 ([ happy_var_1 ]
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  13 happyReduction_37
happyReduction_37 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_3 : happy_var_1
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  14 happyReduction_38
happyReduction_38 (HappyTerminal (TokenType  _ happy_var_1))
	 =  HappyAbsSyn14
		 (TypeN happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_2  14 happyReduction_39
happyReduction_39 _
	_
	 =  HappyAbsSyn14
		 (VoidType
	)

happyReduce_40 = happySpecReduce_1  15 happyReduction_40
happyReduction_40 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn15
		 ([ happy_var_1 ]
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  15 happyReduction_41
happyReduction_41 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_3 : happy_var_1
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  16 happyReduction_42
happyReduction_42 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn16
		 ([ happy_var_1 ]
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  16 happyReduction_43
happyReduction_43 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_3 : happy_var_1
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 38 38 notHappyAtAll (HappyState action) sts stk []

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
	TokenMacroCall _ happy_dollar_dollar -> cont 32;
	TokenInt   _ happy_dollar_dollar -> cont 33;
	TokenType  _ happy_dollar_dollar -> cont 34;
	TokenHole  _ happy_dollar_dollar -> cont 35;
	Builtin _ "case" -> cont 36;
	BinOp _ happy_dollar_dollar -> cont 37;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 38 tk tks = happyError' (tks, explist)
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

data Exp = MacroExp Name [ Exp ]
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
