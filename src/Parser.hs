{-# OPTIONS_GHC -w #-}
{-# LANGUAGE FlexibleInstances #-}
module Parser where
import Lexer
import Data.List
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23
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
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 t18
	| HappyAbsSyn19 t19
	| HappyAbsSyn20 t20
	| HappyAbsSyn21 t21
	| HappyAbsSyn22 t22
	| HappyAbsSyn23 t23

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,568) ([0,4096,16384,2,0,64,2304,0,0,1,36,0,0,0,0,0,17792,32704,0,8192,8,0,0,64,16,0,0,4,144,0,0,0,0,0,16384,0,0,0,0,4,0,0,36865,0,0,21888,32704,0,0,61440,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1240,2044,0,28672,61457,31,32768,2,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,5632,65281,1,0,1112,2044,0,0,4,0,0,1024,1088,0,0,0,512,0,16384,17408,0,0,0,0,0,0,0,0,0,5632,65281,1,0,49408,3,0,0,3844,0,0,17792,32704,0,0,278,511,0,22528,64517,7,0,4448,8176,0,32768,49221,127,0,256,240,0,0,2050,0,0,24576,61489,31,0,2080,60,0,32768,32,0,0,0,0,0,0,4448,8176,0,32768,49221,127,0,5632,65281,1,0,1112,2044,0,512,3840,0,0,17792,32704,0,0,64,0,0,8,0,0,0,1024,0,0,0,8,0,0,0,0,0,0,4096,0,0,2048,128,0,0,0,0,0,0,0,8,0,256,2,0,0,0,0,0,0,4,0,0,0,256,0,16384,0,0,0,0,36865,0,0,0,0,0,0,278,511,0,16384,9216,0,0,4448,8176,0,0,15360,0,0,38464,65281,1,0,64,36,0,0,0,0,0,0,0,0,0,49152,0,0,0,768,0,0,4448,8176,0,0,0,0,0,5632,65281,1,0,0,0,0,0,3874,0,0,0,0,0,0,278,511,0,0,0,0,0,12640,8176,0,0,15360,0,0,8320,0,0,0,49152,3,0,0,3840,0,0,17792,32704,0,32768,32,0,0,33280,0,0,0,4448,8176,0,32768,49221,127,0,38464,65281,1,0,128,0,0,24576,61457,31,0,4096,60,0,0,0,0,0,0,960,0,0,4448,8176,0,0,0,0,0,38464,65281,1,4096,49152,3,0,1024,8,0,0,0,0,0,0,0,0,0,0,0,0,0,6500,8176,0,0,0,0,0,8192,242,0,0,0,0,0,0,3840,0,0,0,0,0,0,0,0,0,0,960,0,0,0,15,0,0,0,0,0,2,0,0,32768,0,0,0,25600,61465,31,0,0,0,0,33792,0,0,0,256,2,0,0,0,0,0,0,0,0,0,128,8,0,0,256,0,0,0,0,0,0,1024,576,0,0,0,8,0,0,0,0,0,0,0,0,8192,8,0,0,0,2048,0,0,64,36,0,0,0,0,0,17792,32704,0,0,0,0,0,22528,64517,7,0,0,0,0,0,16388,2,0,4096,2304,0,0,0,0,0,0,0,0,0,0,0,0,0,278,511,0,0,0,0,0,4448,8176,0,0,0,0,0,0,240,0,0,1112,2044,0,25600,61465,31,0,0,60,0,0,0,0,0,0,0,0,8192,0,0,0,0,15360,0,0,5632,65281,1,0,0,0,0,0,0,0,0,8208,0,0,0,0,0,0,0,0,0,0,6500,8176,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Stms","Stm","Exp","LoopVar","Range","Args","Args1","Case","Case1","Pattern","Pattern1","Const","Exps","Types","TypeDef","TypeCons","TypeArgs","Type","Type1","TypeGArgs","\"->\"","\"=>\"","\"<-\"","\"::=\"","\":\"","\";\"","\",\"","\"..\"","str","chr","\"=\"","\"(\"","\")\"","\"{\"","\"}\"","\"[\"","\"]\"","\"<\"","\">\"","\"-\"","\"+\"","\"*\"","\"/\"","ident","macro","int","type","hole","case","if","else","for","in","binop","%eof"]
        bit_start = st Prelude.* 58
        bit_end = (st Prelude.+ 1) Prelude.* 58
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..57]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (29) = happyShift action_4
action_0 (47) = happyShift action_5
action_0 (50) = happyShift action_6
action_0 (4) = happyGoto action_7
action_0 (5) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (29) = happyShift action_4
action_1 (47) = happyShift action_5
action_1 (50) = happyShift action_6
action_1 (4) = happyGoto action_2
action_1 (5) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (29) = happyShift action_4
action_2 (47) = happyShift action_5
action_2 (50) = happyShift action_6
action_2 (5) = happyGoto action_8
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_2

action_4 (32) = happyShift action_16
action_4 (33) = happyShift action_17
action_4 (35) = happyShift action_18
action_4 (39) = happyShift action_19
action_4 (47) = happyShift action_20
action_4 (48) = happyShift action_21
action_4 (49) = happyShift action_22
action_4 (50) = happyShift action_23
action_4 (51) = happyShift action_24
action_4 (52) = happyShift action_25
action_4 (53) = happyShift action_26
action_4 (54) = happyShift action_27
action_4 (55) = happyShift action_28
action_4 (6) = happyGoto action_13
action_4 (8) = happyGoto action_14
action_4 (15) = happyGoto action_15
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (28) = happyShift action_11
action_5 (34) = happyShift action_12
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (27) = happyShift action_9
action_6 (41) = happyShift action_10
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (29) = happyShift action_4
action_7 (47) = happyShift action_5
action_7 (50) = happyShift action_6
action_7 (58) = happyAccept
action_7 (5) = happyGoto action_8
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_1

action_9 (37) = happyShift action_61
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (47) = happyShift action_60
action_10 (23) = happyGoto action_59
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (35) = happyShift action_56
action_11 (47) = happyShift action_57
action_11 (50) = happyShift action_58
action_11 (17) = happyGoto action_53
action_11 (21) = happyGoto action_54
action_11 (22) = happyGoto action_55
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (32) = happyShift action_16
action_12 (33) = happyShift action_17
action_12 (35) = happyShift action_18
action_12 (37) = happyShift action_52
action_12 (39) = happyShift action_19
action_12 (47) = happyShift action_20
action_12 (48) = happyShift action_21
action_12 (49) = happyShift action_22
action_12 (50) = happyShift action_23
action_12 (51) = happyShift action_24
action_12 (52) = happyShift action_25
action_12 (53) = happyShift action_26
action_12 (54) = happyShift action_27
action_12 (55) = happyShift action_28
action_12 (6) = happyGoto action_51
action_12 (8) = happyGoto action_14
action_12 (15) = happyGoto action_15
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (43) = happyShift action_47
action_13 (44) = happyShift action_48
action_13 (45) = happyShift action_49
action_13 (46) = happyShift action_50
action_13 _ = happyReduce_12

action_14 _ = happyReduce_31

action_15 _ = happyReduce_19

action_16 _ = happyReduce_58

action_17 _ = happyReduce_59

action_18 (32) = happyShift action_16
action_18 (33) = happyShift action_17
action_18 (35) = happyShift action_18
action_18 (36) = happyShift action_46
action_18 (39) = happyShift action_19
action_18 (47) = happyShift action_20
action_18 (48) = happyShift action_21
action_18 (49) = happyShift action_22
action_18 (50) = happyShift action_23
action_18 (51) = happyShift action_24
action_18 (52) = happyShift action_25
action_18 (53) = happyShift action_26
action_18 (54) = happyShift action_27
action_18 (55) = happyShift action_28
action_18 (6) = happyGoto action_44
action_18 (8) = happyGoto action_14
action_18 (10) = happyGoto action_45
action_18 (15) = happyGoto action_15
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (31) = happyShift action_43
action_19 (32) = happyShift action_16
action_19 (33) = happyShift action_17
action_19 (35) = happyShift action_18
action_19 (39) = happyShift action_19
action_19 (47) = happyShift action_20
action_19 (48) = happyShift action_21
action_19 (49) = happyShift action_22
action_19 (50) = happyShift action_23
action_19 (51) = happyShift action_24
action_19 (52) = happyShift action_25
action_19 (53) = happyShift action_26
action_19 (54) = happyShift action_27
action_19 (55) = happyShift action_28
action_19 (6) = happyGoto action_41
action_19 (8) = happyGoto action_14
action_19 (9) = happyGoto action_42
action_19 (15) = happyGoto action_15
action_19 _ = happyReduce_45

action_20 (24) = happyShift action_38
action_20 (26) = happyShift action_39
action_20 (35) = happyShift action_40
action_20 _ = happyReduce_16

action_21 (35) = happyShift action_37
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_57

action_23 (35) = happyShift action_36
action_23 _ = happyReduce_26

action_24 _ = happyReduce_29

action_25 (32) = happyShift action_16
action_25 (33) = happyShift action_17
action_25 (35) = happyShift action_18
action_25 (39) = happyShift action_19
action_25 (47) = happyShift action_20
action_25 (48) = happyShift action_21
action_25 (49) = happyShift action_22
action_25 (50) = happyShift action_23
action_25 (51) = happyShift action_24
action_25 (52) = happyShift action_25
action_25 (53) = happyShift action_26
action_25 (54) = happyShift action_27
action_25 (55) = happyShift action_28
action_25 (6) = happyGoto action_35
action_25 (8) = happyGoto action_14
action_25 (15) = happyGoto action_15
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (32) = happyShift action_16
action_26 (33) = happyShift action_17
action_26 (35) = happyShift action_18
action_26 (39) = happyShift action_19
action_26 (47) = happyShift action_20
action_26 (48) = happyShift action_21
action_26 (49) = happyShift action_22
action_26 (50) = happyShift action_23
action_26 (51) = happyShift action_24
action_26 (52) = happyShift action_25
action_26 (53) = happyShift action_26
action_26 (54) = happyShift action_27
action_26 (55) = happyShift action_28
action_26 (6) = happyGoto action_34
action_26 (8) = happyGoto action_14
action_26 (15) = happyGoto action_15
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (37) = happyShift action_33
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (35) = happyShift action_30
action_28 (47) = happyShift action_31
action_28 (51) = happyShift action_32
action_28 (7) = happyGoto action_29
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (56) = happyShift action_99
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (35) = happyShift action_30
action_30 (47) = happyShift action_31
action_30 (51) = happyShift action_32
action_30 (7) = happyGoto action_98
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_36

action_32 _ = happyReduce_37

action_33 (32) = happyShift action_16
action_33 (33) = happyShift action_17
action_33 (35) = happyShift action_18
action_33 (39) = happyShift action_19
action_33 (47) = happyShift action_20
action_33 (48) = happyShift action_21
action_33 (49) = happyShift action_22
action_33 (50) = happyShift action_23
action_33 (51) = happyShift action_24
action_33 (52) = happyShift action_25
action_33 (53) = happyShift action_26
action_33 (54) = happyShift action_27
action_33 (55) = happyShift action_28
action_33 (6) = happyGoto action_72
action_33 (8) = happyGoto action_14
action_33 (15) = happyGoto action_15
action_33 (16) = happyGoto action_97
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (37) = happyShift action_96
action_34 (43) = happyShift action_47
action_34 (44) = happyShift action_48
action_34 (45) = happyShift action_49
action_34 (46) = happyShift action_50
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (37) = happyShift action_95
action_35 (43) = happyShift action_47
action_35 (44) = happyShift action_48
action_35 (45) = happyShift action_49
action_35 (46) = happyShift action_50
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (32) = happyShift action_16
action_36 (33) = happyShift action_17
action_36 (35) = happyShift action_18
action_36 (39) = happyShift action_19
action_36 (47) = happyShift action_20
action_36 (48) = happyShift action_21
action_36 (49) = happyShift action_22
action_36 (50) = happyShift action_23
action_36 (51) = happyShift action_24
action_36 (52) = happyShift action_25
action_36 (53) = happyShift action_26
action_36 (54) = happyShift action_27
action_36 (55) = happyShift action_28
action_36 (6) = happyGoto action_88
action_36 (8) = happyGoto action_14
action_36 (9) = happyGoto action_94
action_36 (15) = happyGoto action_15
action_36 _ = happyReduce_45

action_37 (32) = happyShift action_16
action_37 (33) = happyShift action_17
action_37 (35) = happyShift action_18
action_37 (39) = happyShift action_19
action_37 (47) = happyShift action_20
action_37 (48) = happyShift action_21
action_37 (49) = happyShift action_22
action_37 (50) = happyShift action_23
action_37 (51) = happyShift action_24
action_37 (52) = happyShift action_25
action_37 (53) = happyShift action_26
action_37 (54) = happyShift action_27
action_37 (55) = happyShift action_28
action_37 (6) = happyGoto action_88
action_37 (8) = happyGoto action_14
action_37 (9) = happyGoto action_93
action_37 (15) = happyGoto action_15
action_37 _ = happyReduce_45

action_38 (32) = happyShift action_16
action_38 (33) = happyShift action_17
action_38 (35) = happyShift action_18
action_38 (37) = happyShift action_92
action_38 (39) = happyShift action_19
action_38 (47) = happyShift action_20
action_38 (48) = happyShift action_21
action_38 (49) = happyShift action_22
action_38 (50) = happyShift action_23
action_38 (51) = happyShift action_24
action_38 (52) = happyShift action_25
action_38 (53) = happyShift action_26
action_38 (54) = happyShift action_27
action_38 (55) = happyShift action_28
action_38 (6) = happyGoto action_91
action_38 (8) = happyGoto action_14
action_38 (15) = happyGoto action_15
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (32) = happyShift action_16
action_39 (33) = happyShift action_17
action_39 (35) = happyShift action_18
action_39 (39) = happyShift action_19
action_39 (47) = happyShift action_20
action_39 (48) = happyShift action_21
action_39 (49) = happyShift action_22
action_39 (50) = happyShift action_23
action_39 (51) = happyShift action_24
action_39 (52) = happyShift action_25
action_39 (53) = happyShift action_26
action_39 (54) = happyShift action_27
action_39 (55) = happyShift action_28
action_39 (6) = happyGoto action_90
action_39 (8) = happyGoto action_14
action_39 (15) = happyGoto action_15
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (32) = happyShift action_16
action_40 (33) = happyShift action_17
action_40 (35) = happyShift action_18
action_40 (39) = happyShift action_19
action_40 (47) = happyShift action_20
action_40 (48) = happyShift action_21
action_40 (49) = happyShift action_22
action_40 (50) = happyShift action_23
action_40 (51) = happyShift action_24
action_40 (52) = happyShift action_25
action_40 (53) = happyShift action_26
action_40 (54) = happyShift action_27
action_40 (55) = happyShift action_28
action_40 (6) = happyGoto action_88
action_40 (8) = happyGoto action_14
action_40 (9) = happyGoto action_89
action_40 (15) = happyGoto action_15
action_40 _ = happyReduce_45

action_41 (31) = happyShift action_87
action_41 (43) = happyShift action_47
action_41 (44) = happyShift action_48
action_41 (45) = happyShift action_49
action_41 (46) = happyShift action_50
action_41 _ = happyReduce_46

action_42 (30) = happyShift action_85
action_42 (40) = happyShift action_86
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (32) = happyShift action_16
action_43 (33) = happyShift action_17
action_43 (35) = happyShift action_18
action_43 (39) = happyShift action_19
action_43 (40) = happyShift action_84
action_43 (47) = happyShift action_20
action_43 (48) = happyShift action_21
action_43 (49) = happyShift action_22
action_43 (50) = happyShift action_23
action_43 (51) = happyShift action_24
action_43 (52) = happyShift action_25
action_43 (53) = happyShift action_26
action_43 (54) = happyShift action_27
action_43 (55) = happyShift action_28
action_43 (6) = happyGoto action_83
action_43 (8) = happyGoto action_14
action_43 (15) = happyGoto action_15
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (30) = happyShift action_81
action_44 (36) = happyShift action_82
action_44 (43) = happyShift action_47
action_44 (44) = happyShift action_48
action_44 (45) = happyShift action_49
action_44 (46) = happyShift action_50
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (30) = happyShift action_79
action_45 (36) = happyShift action_80
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_14

action_47 (32) = happyShift action_16
action_47 (33) = happyShift action_17
action_47 (35) = happyShift action_18
action_47 (39) = happyShift action_19
action_47 (47) = happyShift action_20
action_47 (48) = happyShift action_21
action_47 (49) = happyShift action_22
action_47 (50) = happyShift action_23
action_47 (51) = happyShift action_24
action_47 (52) = happyShift action_25
action_47 (53) = happyShift action_26
action_47 (54) = happyShift action_27
action_47 (55) = happyShift action_28
action_47 (6) = happyGoto action_78
action_47 (8) = happyGoto action_14
action_47 (15) = happyGoto action_15
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (32) = happyShift action_16
action_48 (33) = happyShift action_17
action_48 (35) = happyShift action_18
action_48 (39) = happyShift action_19
action_48 (47) = happyShift action_20
action_48 (48) = happyShift action_21
action_48 (49) = happyShift action_22
action_48 (50) = happyShift action_23
action_48 (51) = happyShift action_24
action_48 (52) = happyShift action_25
action_48 (53) = happyShift action_26
action_48 (54) = happyShift action_27
action_48 (55) = happyShift action_28
action_48 (6) = happyGoto action_77
action_48 (8) = happyGoto action_14
action_48 (15) = happyGoto action_15
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (32) = happyShift action_16
action_49 (33) = happyShift action_17
action_49 (35) = happyShift action_18
action_49 (39) = happyShift action_19
action_49 (47) = happyShift action_20
action_49 (48) = happyShift action_21
action_49 (49) = happyShift action_22
action_49 (50) = happyShift action_23
action_49 (51) = happyShift action_24
action_49 (52) = happyShift action_25
action_49 (53) = happyShift action_26
action_49 (54) = happyShift action_27
action_49 (55) = happyShift action_28
action_49 (6) = happyGoto action_76
action_49 (8) = happyGoto action_14
action_49 (15) = happyGoto action_15
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (32) = happyShift action_16
action_50 (33) = happyShift action_17
action_50 (35) = happyShift action_18
action_50 (39) = happyShift action_19
action_50 (47) = happyShift action_20
action_50 (48) = happyShift action_21
action_50 (49) = happyShift action_22
action_50 (50) = happyShift action_23
action_50 (51) = happyShift action_24
action_50 (52) = happyShift action_25
action_50 (53) = happyShift action_26
action_50 (54) = happyShift action_27
action_50 (55) = happyShift action_28
action_50 (6) = happyGoto action_75
action_50 (8) = happyGoto action_14
action_50 (15) = happyGoto action_15
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (28) = happyShift action_74
action_51 (43) = happyShift action_47
action_51 (44) = happyShift action_48
action_51 (45) = happyShift action_49
action_51 (46) = happyShift action_50
action_51 _ = happyReduce_8

action_52 (32) = happyShift action_16
action_52 (33) = happyShift action_17
action_52 (35) = happyShift action_18
action_52 (39) = happyShift action_19
action_52 (47) = happyShift action_20
action_52 (48) = happyShift action_21
action_52 (49) = happyShift action_22
action_52 (50) = happyShift action_23
action_52 (51) = happyShift action_24
action_52 (52) = happyShift action_25
action_52 (53) = happyShift action_26
action_52 (54) = happyShift action_27
action_52 (55) = happyShift action_28
action_52 (6) = happyGoto action_72
action_52 (8) = happyGoto action_14
action_52 (15) = happyGoto action_15
action_52 (16) = happyGoto action_73
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (37) = happyShift action_71
action_53 _ = happyReduce_73

action_54 (24) = happyShift action_70
action_54 _ = happyReduce_5

action_55 (37) = happyShift action_69
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (36) = happyShift action_68
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_66

action_58 (41) = happyShift action_67
action_58 _ = happyReduce_63

action_59 (30) = happyShift action_65
action_59 (42) = happyShift action_66
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_76

action_61 (50) = happyShift action_64
action_61 (18) = happyGoto action_62
action_61 (19) = happyGoto action_63
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (29) = happyShift action_133
action_62 (38) = happyShift action_134
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_67

action_64 (35) = happyShift action_132
action_64 _ = happyReduce_69

action_65 (47) = happyShift action_131
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (27) = happyShift action_130
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (35) = happyShift action_56
action_67 (47) = happyShift action_57
action_67 (50) = happyShift action_58
action_67 (17) = happyGoto action_128
action_67 (20) = happyGoto action_129
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_65

action_69 (32) = happyShift action_16
action_69 (33) = happyShift action_17
action_69 (35) = happyShift action_18
action_69 (39) = happyShift action_19
action_69 (47) = happyShift action_20
action_69 (48) = happyShift action_21
action_69 (49) = happyShift action_22
action_69 (50) = happyShift action_23
action_69 (51) = happyShift action_24
action_69 (52) = happyShift action_25
action_69 (53) = happyShift action_26
action_69 (54) = happyShift action_27
action_69 (55) = happyShift action_28
action_69 (6) = happyGoto action_88
action_69 (8) = happyGoto action_14
action_69 (9) = happyGoto action_125
action_69 (13) = happyGoto action_126
action_69 (14) = happyGoto action_127
action_69 (15) = happyGoto action_15
action_69 _ = happyReduce_45

action_70 (35) = happyShift action_56
action_70 (47) = happyShift action_57
action_70 (50) = happyShift action_58
action_70 (17) = happyGoto action_124
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (32) = happyShift action_16
action_71 (33) = happyShift action_17
action_71 (35) = happyShift action_18
action_71 (39) = happyShift action_19
action_71 (47) = happyShift action_20
action_71 (48) = happyShift action_21
action_71 (49) = happyShift action_22
action_71 (50) = happyShift action_23
action_71 (51) = happyShift action_24
action_71 (52) = happyShift action_25
action_71 (53) = happyShift action_26
action_71 (54) = happyShift action_27
action_71 (55) = happyShift action_28
action_71 (6) = happyGoto action_72
action_71 (8) = happyGoto action_14
action_71 (15) = happyGoto action_15
action_71 (16) = happyGoto action_123
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (43) = happyShift action_47
action_72 (44) = happyShift action_48
action_72 (45) = happyShift action_49
action_72 (46) = happyShift action_50
action_72 _ = happyReduce_60

action_73 (29) = happyShift action_103
action_73 (32) = happyShift action_16
action_73 (33) = happyShift action_17
action_73 (35) = happyShift action_18
action_73 (38) = happyShift action_122
action_73 (39) = happyShift action_19
action_73 (47) = happyShift action_20
action_73 (48) = happyShift action_21
action_73 (49) = happyShift action_22
action_73 (50) = happyShift action_23
action_73 (51) = happyShift action_24
action_73 (52) = happyShift action_25
action_73 (53) = happyShift action_26
action_73 (54) = happyShift action_27
action_73 (55) = happyShift action_28
action_73 (6) = happyGoto action_102
action_73 (8) = happyGoto action_14
action_73 (15) = happyGoto action_15
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (35) = happyShift action_56
action_74 (47) = happyShift action_57
action_74 (50) = happyShift action_58
action_74 (17) = happyGoto action_120
action_74 (21) = happyGoto action_121
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_23

action_76 _ = happyReduce_22

action_77 (45) = happyShift action_49
action_77 (46) = happyShift action_50
action_77 _ = happyReduce_20

action_78 (45) = happyShift action_49
action_78 (46) = happyShift action_50
action_78 _ = happyReduce_21

action_79 (32) = happyShift action_16
action_79 (33) = happyShift action_17
action_79 (35) = happyShift action_18
action_79 (39) = happyShift action_19
action_79 (47) = happyShift action_20
action_79 (48) = happyShift action_21
action_79 (49) = happyShift action_22
action_79 (50) = happyShift action_23
action_79 (51) = happyShift action_24
action_79 (52) = happyShift action_25
action_79 (53) = happyShift action_26
action_79 (54) = happyShift action_27
action_79 (55) = happyShift action_28
action_79 (6) = happyGoto action_119
action_79 (8) = happyGoto action_14
action_79 (15) = happyGoto action_15
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_32

action_81 (32) = happyShift action_16
action_81 (33) = happyShift action_17
action_81 (35) = happyShift action_18
action_81 (39) = happyShift action_19
action_81 (47) = happyShift action_20
action_81 (48) = happyShift action_21
action_81 (49) = happyShift action_22
action_81 (50) = happyShift action_23
action_81 (51) = happyShift action_24
action_81 (52) = happyShift action_25
action_81 (53) = happyShift action_26
action_81 (54) = happyShift action_27
action_81 (55) = happyShift action_28
action_81 (6) = happyGoto action_118
action_81 (8) = happyGoto action_14
action_81 (15) = happyGoto action_15
action_81 _ = happyFail (happyExpListPerState 81)

action_82 _ = happyReduce_13

action_83 (36) = happyShift action_116
action_83 (40) = happyShift action_117
action_83 (43) = happyShift action_47
action_83 (44) = happyShift action_48
action_83 (45) = happyShift action_49
action_83 (46) = happyShift action_50
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_42

action_85 (32) = happyShift action_16
action_85 (33) = happyShift action_17
action_85 (35) = happyShift action_18
action_85 (39) = happyShift action_19
action_85 (47) = happyShift action_20
action_85 (48) = happyShift action_21
action_85 (49) = happyShift action_22
action_85 (50) = happyShift action_23
action_85 (51) = happyShift action_24
action_85 (52) = happyShift action_25
action_85 (53) = happyShift action_26
action_85 (54) = happyShift action_27
action_85 (55) = happyShift action_28
action_85 (6) = happyGoto action_115
action_85 (8) = happyGoto action_14
action_85 (15) = happyGoto action_15
action_85 _ = happyFail (happyExpListPerState 85)

action_86 _ = happyReduce_30

action_87 (32) = happyShift action_16
action_87 (33) = happyShift action_17
action_87 (35) = happyShift action_18
action_87 (39) = happyShift action_19
action_87 (40) = happyShift action_114
action_87 (47) = happyShift action_20
action_87 (48) = happyShift action_21
action_87 (49) = happyShift action_22
action_87 (50) = happyShift action_23
action_87 (51) = happyShift action_24
action_87 (52) = happyShift action_25
action_87 (53) = happyShift action_26
action_87 (54) = happyShift action_27
action_87 (55) = happyShift action_28
action_87 (6) = happyGoto action_113
action_87 (8) = happyGoto action_14
action_87 (15) = happyGoto action_15
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (43) = happyShift action_47
action_88 (44) = happyShift action_48
action_88 (45) = happyShift action_49
action_88 (46) = happyShift action_50
action_88 _ = happyReduce_46

action_89 (30) = happyShift action_85
action_89 (36) = happyShift action_112
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (43) = happyShift action_47
action_90 (44) = happyShift action_48
action_90 (45) = happyShift action_49
action_90 (46) = happyShift action_50
action_90 _ = happyReduce_15

action_91 (43) = happyShift action_47
action_91 (44) = happyShift action_48
action_91 (45) = happyShift action_49
action_91 (46) = happyShift action_50
action_91 _ = happyReduce_17

action_92 (32) = happyShift action_16
action_92 (33) = happyShift action_17
action_92 (35) = happyShift action_18
action_92 (39) = happyShift action_19
action_92 (47) = happyShift action_20
action_92 (48) = happyShift action_21
action_92 (49) = happyShift action_22
action_92 (50) = happyShift action_23
action_92 (51) = happyShift action_24
action_92 (52) = happyShift action_25
action_92 (53) = happyShift action_26
action_92 (54) = happyShift action_27
action_92 (55) = happyShift action_28
action_92 (6) = happyGoto action_72
action_92 (8) = happyGoto action_14
action_92 (15) = happyGoto action_15
action_92 (16) = happyGoto action_111
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (30) = happyShift action_85
action_93 (36) = happyShift action_110
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (30) = happyShift action_85
action_94 (36) = happyShift action_109
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (32) = happyShift action_16
action_95 (33) = happyShift action_17
action_95 (35) = happyShift action_18
action_95 (39) = happyShift action_19
action_95 (47) = happyShift action_20
action_95 (48) = happyShift action_21
action_95 (49) = happyShift action_22
action_95 (50) = happyShift action_23
action_95 (51) = happyShift action_24
action_95 (52) = happyShift action_25
action_95 (53) = happyShift action_26
action_95 (54) = happyShift action_27
action_95 (55) = happyShift action_28
action_95 (6) = happyGoto action_106
action_95 (8) = happyGoto action_14
action_95 (11) = happyGoto action_107
action_95 (12) = happyGoto action_108
action_95 (15) = happyGoto action_15
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (32) = happyShift action_16
action_96 (33) = happyShift action_17
action_96 (35) = happyShift action_18
action_96 (39) = happyShift action_19
action_96 (47) = happyShift action_20
action_96 (48) = happyShift action_21
action_96 (49) = happyShift action_22
action_96 (50) = happyShift action_23
action_96 (51) = happyShift action_24
action_96 (52) = happyShift action_25
action_96 (53) = happyShift action_26
action_96 (54) = happyShift action_27
action_96 (55) = happyShift action_28
action_96 (6) = happyGoto action_72
action_96 (8) = happyGoto action_14
action_96 (15) = happyGoto action_15
action_96 (16) = happyGoto action_105
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (29) = happyShift action_103
action_97 (32) = happyShift action_16
action_97 (33) = happyShift action_17
action_97 (35) = happyShift action_18
action_97 (38) = happyShift action_104
action_97 (39) = happyShift action_19
action_97 (47) = happyShift action_20
action_97 (48) = happyShift action_21
action_97 (49) = happyShift action_22
action_97 (50) = happyShift action_23
action_97 (51) = happyShift action_24
action_97 (52) = happyShift action_25
action_97 (53) = happyShift action_26
action_97 (54) = happyShift action_27
action_97 (55) = happyShift action_28
action_97 (6) = happyGoto action_102
action_97 (8) = happyGoto action_14
action_97 (15) = happyGoto action_15
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (36) = happyShift action_101
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (32) = happyShift action_16
action_99 (33) = happyShift action_17
action_99 (35) = happyShift action_18
action_99 (39) = happyShift action_19
action_99 (47) = happyShift action_20
action_99 (48) = happyShift action_21
action_99 (49) = happyShift action_22
action_99 (50) = happyShift action_23
action_99 (51) = happyShift action_24
action_99 (52) = happyShift action_25
action_99 (53) = happyShift action_26
action_99 (54) = happyShift action_27
action_99 (55) = happyShift action_28
action_99 (6) = happyGoto action_100
action_99 (8) = happyGoto action_14
action_99 (15) = happyGoto action_15
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (37) = happyShift action_154
action_100 (43) = happyShift action_47
action_100 (44) = happyShift action_48
action_100 (45) = happyShift action_49
action_100 (46) = happyShift action_50
action_100 _ = happyFail (happyExpListPerState 100)

action_101 _ = happyReduce_38

action_102 (43) = happyShift action_47
action_102 (44) = happyShift action_48
action_102 (45) = happyShift action_49
action_102 (46) = happyShift action_50
action_102 _ = happyReduce_62

action_103 (32) = happyShift action_16
action_103 (33) = happyShift action_17
action_103 (35) = happyShift action_18
action_103 (39) = happyShift action_19
action_103 (47) = happyShift action_20
action_103 (48) = happyShift action_21
action_103 (49) = happyShift action_22
action_103 (50) = happyShift action_23
action_103 (51) = happyShift action_24
action_103 (52) = happyShift action_25
action_103 (53) = happyShift action_26
action_103 (54) = happyShift action_27
action_103 (55) = happyShift action_28
action_103 (6) = happyGoto action_153
action_103 (8) = happyGoto action_14
action_103 (15) = happyGoto action_15
action_103 _ = happyFail (happyExpListPerState 103)

action_104 _ = happyReduce_34

action_105 (29) = happyShift action_103
action_105 (32) = happyShift action_16
action_105 (33) = happyShift action_17
action_105 (35) = happyShift action_18
action_105 (38) = happyShift action_152
action_105 (39) = happyShift action_19
action_105 (47) = happyShift action_20
action_105 (48) = happyShift action_21
action_105 (49) = happyShift action_22
action_105 (50) = happyShift action_23
action_105 (51) = happyShift action_24
action_105 (52) = happyShift action_25
action_105 (53) = happyShift action_26
action_105 (54) = happyShift action_27
action_105 (55) = happyShift action_28
action_105 (6) = happyGoto action_102
action_105 (8) = happyGoto action_14
action_105 (15) = happyGoto action_15
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (25) = happyShift action_151
action_106 (43) = happyShift action_47
action_106 (44) = happyShift action_48
action_106 (45) = happyShift action_49
action_106 (46) = happyShift action_50
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (29) = happyShift action_149
action_107 (38) = happyShift action_150
action_107 _ = happyFail (happyExpListPerState 107)

action_108 _ = happyReduce_50

action_109 _ = happyReduce_27

action_110 _ = happyReduce_25

action_111 (29) = happyShift action_103
action_111 (32) = happyShift action_16
action_111 (33) = happyShift action_17
action_111 (35) = happyShift action_18
action_111 (38) = happyShift action_148
action_111 (39) = happyShift action_19
action_111 (47) = happyShift action_20
action_111 (48) = happyShift action_21
action_111 (49) = happyShift action_22
action_111 (50) = happyShift action_23
action_111 (51) = happyShift action_24
action_111 (52) = happyShift action_25
action_111 (53) = happyShift action_26
action_111 (54) = happyShift action_27
action_111 (55) = happyShift action_28
action_111 (6) = happyGoto action_102
action_111 (8) = happyGoto action_14
action_111 (15) = happyGoto action_15
action_111 _ = happyFail (happyExpListPerState 111)

action_112 _ = happyReduce_24

action_113 (36) = happyShift action_146
action_113 (40) = happyShift action_147
action_113 (43) = happyShift action_47
action_113 (44) = happyShift action_48
action_113 (45) = happyShift action_49
action_113 (46) = happyShift action_50
action_113 _ = happyFail (happyExpListPerState 113)

action_114 _ = happyReduce_41

action_115 (43) = happyShift action_47
action_115 (44) = happyShift action_48
action_115 (45) = happyShift action_49
action_115 (46) = happyShift action_50
action_115 _ = happyReduce_47

action_116 _ = happyReduce_44

action_117 _ = happyReduce_40

action_118 (43) = happyShift action_47
action_118 (44) = happyShift action_48
action_118 (45) = happyShift action_49
action_118 (46) = happyShift action_50
action_118 _ = happyReduce_48

action_119 (43) = happyShift action_47
action_119 (44) = happyShift action_48
action_119 (45) = happyShift action_49
action_119 (46) = happyShift action_50
action_119 _ = happyReduce_49

action_120 _ = happyReduce_73

action_121 (24) = happyShift action_145
action_121 _ = happyReduce_9

action_122 (28) = happyShift action_144
action_122 _ = happyReduce_10

action_123 (29) = happyShift action_103
action_123 (32) = happyShift action_16
action_123 (33) = happyShift action_17
action_123 (35) = happyShift action_18
action_123 (38) = happyShift action_143
action_123 (39) = happyShift action_19
action_123 (47) = happyShift action_20
action_123 (48) = happyShift action_21
action_123 (49) = happyShift action_22
action_123 (50) = happyShift action_23
action_123 (51) = happyShift action_24
action_123 (52) = happyShift action_25
action_123 (53) = happyShift action_26
action_123 (54) = happyShift action_27
action_123 (55) = happyShift action_28
action_123 (6) = happyGoto action_102
action_123 (8) = happyGoto action_14
action_123 (15) = happyGoto action_15
action_123 _ = happyFail (happyExpListPerState 123)

action_124 (37) = happyReduce_75
action_124 _ = happyReduce_74

action_125 (25) = happyShift action_142
action_125 (30) = happyShift action_85
action_125 _ = happyFail (happyExpListPerState 125)

action_126 (29) = happyShift action_140
action_126 (38) = happyShift action_141
action_126 _ = happyFail (happyExpListPerState 126)

action_127 _ = happyReduce_53

action_128 _ = happyReduce_71

action_129 (30) = happyShift action_138
action_129 (42) = happyShift action_139
action_129 _ = happyFail (happyExpListPerState 129)

action_130 (37) = happyShift action_137
action_130 _ = happyFail (happyExpListPerState 130)

action_131 _ = happyReduce_77

action_132 (35) = happyShift action_56
action_132 (47) = happyShift action_57
action_132 (50) = happyShift action_58
action_132 (17) = happyGoto action_128
action_132 (20) = happyGoto action_136
action_132 _ = happyFail (happyExpListPerState 132)

action_133 (50) = happyShift action_64
action_133 (19) = happyGoto action_135
action_133 _ = happyFail (happyExpListPerState 133)

action_134 _ = happyReduce_3

action_135 _ = happyReduce_68

action_136 (30) = happyShift action_138
action_136 (36) = happyShift action_165
action_136 _ = happyFail (happyExpListPerState 136)

action_137 (50) = happyShift action_64
action_137 (18) = happyGoto action_164
action_137 (19) = happyGoto action_63
action_137 _ = happyFail (happyExpListPerState 137)

action_138 (35) = happyShift action_56
action_138 (47) = happyShift action_57
action_138 (50) = happyShift action_58
action_138 (17) = happyGoto action_163
action_138 _ = happyFail (happyExpListPerState 138)

action_139 _ = happyReduce_64

action_140 (32) = happyShift action_16
action_140 (33) = happyShift action_17
action_140 (35) = happyShift action_18
action_140 (39) = happyShift action_19
action_140 (47) = happyShift action_20
action_140 (48) = happyShift action_21
action_140 (49) = happyShift action_22
action_140 (50) = happyShift action_23
action_140 (51) = happyShift action_24
action_140 (52) = happyShift action_25
action_140 (53) = happyShift action_26
action_140 (54) = happyShift action_27
action_140 (55) = happyShift action_28
action_140 (6) = happyGoto action_88
action_140 (8) = happyGoto action_14
action_140 (9) = happyGoto action_125
action_140 (14) = happyGoto action_162
action_140 (15) = happyGoto action_15
action_140 _ = happyReduce_45

action_141 _ = happyReduce_7

action_142 (32) = happyShift action_16
action_142 (33) = happyShift action_17
action_142 (35) = happyShift action_18
action_142 (37) = happyShift action_161
action_142 (39) = happyShift action_19
action_142 (47) = happyShift action_20
action_142 (48) = happyShift action_21
action_142 (49) = happyShift action_22
action_142 (50) = happyShift action_23
action_142 (51) = happyShift action_24
action_142 (52) = happyShift action_25
action_142 (53) = happyShift action_26
action_142 (54) = happyShift action_27
action_142 (55) = happyShift action_28
action_142 (6) = happyGoto action_160
action_142 (8) = happyGoto action_14
action_142 (15) = happyGoto action_15
action_142 _ = happyFail (happyExpListPerState 142)

action_143 _ = happyReduce_6

action_144 (35) = happyShift action_56
action_144 (47) = happyShift action_57
action_144 (50) = happyShift action_58
action_144 (17) = happyGoto action_120
action_144 (21) = happyGoto action_159
action_144 _ = happyFail (happyExpListPerState 144)

action_145 (35) = happyShift action_56
action_145 (47) = happyShift action_57
action_145 (50) = happyShift action_58
action_145 (17) = happyGoto action_158
action_145 _ = happyFail (happyExpListPerState 145)

action_146 _ = happyReduce_43

action_147 _ = happyReduce_39

action_148 _ = happyReduce_18

action_149 (32) = happyShift action_16
action_149 (33) = happyShift action_17
action_149 (35) = happyShift action_18
action_149 (39) = happyShift action_19
action_149 (47) = happyShift action_20
action_149 (48) = happyShift action_21
action_149 (49) = happyShift action_22
action_149 (50) = happyShift action_23
action_149 (51) = happyShift action_24
action_149 (52) = happyShift action_25
action_149 (53) = happyShift action_26
action_149 (54) = happyShift action_27
action_149 (55) = happyShift action_28
action_149 (6) = happyGoto action_106
action_149 (8) = happyGoto action_14
action_149 (12) = happyGoto action_157
action_149 (15) = happyGoto action_15
action_149 _ = happyFail (happyExpListPerState 149)

action_150 _ = happyReduce_28

action_151 (32) = happyShift action_16
action_151 (33) = happyShift action_17
action_151 (35) = happyShift action_18
action_151 (39) = happyShift action_19
action_151 (47) = happyShift action_20
action_151 (48) = happyShift action_21
action_151 (49) = happyShift action_22
action_151 (50) = happyShift action_23
action_151 (51) = happyShift action_24
action_151 (52) = happyShift action_25
action_151 (53) = happyShift action_26
action_151 (54) = happyShift action_27
action_151 (55) = happyShift action_28
action_151 (6) = happyGoto action_156
action_151 (8) = happyGoto action_14
action_151 (15) = happyGoto action_15
action_151 _ = happyFail (happyExpListPerState 151)

action_152 _ = happyReduce_33

action_153 (43) = happyShift action_47
action_153 (44) = happyShift action_48
action_153 (45) = happyShift action_49
action_153 (46) = happyShift action_50
action_153 _ = happyReduce_61

action_154 (32) = happyShift action_16
action_154 (33) = happyShift action_17
action_154 (35) = happyShift action_18
action_154 (39) = happyShift action_19
action_154 (47) = happyShift action_20
action_154 (48) = happyShift action_21
action_154 (49) = happyShift action_22
action_154 (50) = happyShift action_23
action_154 (51) = happyShift action_24
action_154 (52) = happyShift action_25
action_154 (53) = happyShift action_26
action_154 (54) = happyShift action_27
action_154 (55) = happyShift action_28
action_154 (6) = happyGoto action_72
action_154 (8) = happyGoto action_14
action_154 (15) = happyGoto action_15
action_154 (16) = happyGoto action_155
action_154 _ = happyFail (happyExpListPerState 154)

action_155 (29) = happyShift action_103
action_155 (32) = happyShift action_16
action_155 (33) = happyShift action_17
action_155 (35) = happyShift action_18
action_155 (38) = happyShift action_168
action_155 (39) = happyShift action_19
action_155 (47) = happyShift action_20
action_155 (48) = happyShift action_21
action_155 (49) = happyShift action_22
action_155 (50) = happyShift action_23
action_155 (51) = happyShift action_24
action_155 (52) = happyShift action_25
action_155 (53) = happyShift action_26
action_155 (54) = happyShift action_27
action_155 (55) = happyShift action_28
action_155 (6) = happyGoto action_102
action_155 (8) = happyGoto action_14
action_155 (15) = happyGoto action_15
action_155 _ = happyFail (happyExpListPerState 155)

action_156 (43) = happyShift action_47
action_156 (44) = happyShift action_48
action_156 (45) = happyShift action_49
action_156 (46) = happyShift action_50
action_156 _ = happyReduce_52

action_157 _ = happyReduce_51

action_158 _ = happyReduce_74

action_159 (24) = happyShift action_145
action_159 _ = happyReduce_11

action_160 (43) = happyShift action_47
action_160 (44) = happyShift action_48
action_160 (45) = happyShift action_49
action_160 (46) = happyShift action_50
action_160 _ = happyReduce_55

action_161 (32) = happyShift action_16
action_161 (33) = happyShift action_17
action_161 (35) = happyShift action_18
action_161 (39) = happyShift action_19
action_161 (47) = happyShift action_20
action_161 (48) = happyShift action_21
action_161 (49) = happyShift action_22
action_161 (50) = happyShift action_23
action_161 (51) = happyShift action_24
action_161 (52) = happyShift action_25
action_161 (53) = happyShift action_26
action_161 (54) = happyShift action_27
action_161 (55) = happyShift action_28
action_161 (6) = happyGoto action_72
action_161 (8) = happyGoto action_14
action_161 (15) = happyGoto action_15
action_161 (16) = happyGoto action_167
action_161 _ = happyFail (happyExpListPerState 161)

action_162 _ = happyReduce_54

action_163 _ = happyReduce_72

action_164 (29) = happyShift action_133
action_164 (38) = happyShift action_166
action_164 _ = happyFail (happyExpListPerState 164)

action_165 _ = happyReduce_70

action_166 _ = happyReduce_4

action_167 (29) = happyShift action_103
action_167 (32) = happyShift action_16
action_167 (33) = happyShift action_17
action_167 (35) = happyShift action_18
action_167 (38) = happyShift action_169
action_167 (39) = happyShift action_19
action_167 (47) = happyShift action_20
action_167 (48) = happyShift action_21
action_167 (49) = happyShift action_22
action_167 (50) = happyShift action_23
action_167 (51) = happyShift action_24
action_167 (52) = happyShift action_25
action_167 (53) = happyShift action_26
action_167 (54) = happyShift action_27
action_167 (55) = happyShift action_28
action_167 (6) = happyGoto action_102
action_167 (8) = happyGoto action_14
action_167 (15) = happyGoto action_15
action_167 _ = happyFail (happyExpListPerState 167)

action_168 _ = happyReduce_35

action_169 _ = happyReduce_56

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
	(HappyAbsSyn18  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenType  _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TypeStm happy_var_1 []   (reverse happy_var_4)
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 8 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn18  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenType  _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TypeStm happy_var_1 (reverse happy_var_3) (reverse happy_var_7)
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_3  5 happyReduction_5
happyReduction_5 (HappyAbsSyn21  happy_var_3)
	_
	(HappyTerminal (TokenIdent _ happy_var_1))
	 =  HappyAbsSyn5
		 (SignStm       happy_var_1 (reverse happy_var_3)
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happyReduce 6 5 happyReduction_6
happyReduction_6 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncStm       happy_var_1 (reverse happy_var_5) [happy_var_3]
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 6 5 happyReduction_7
happyReduction_7 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn22  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (PatternStm happy_var_1    (reverse happy_var_3) (reverse happy_var_5)
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_3  5 happyReduction_8
happyReduction_8 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenIdent _ happy_var_1))
	 =  HappyAbsSyn5
		 (FuncStm  happy_var_1 [happy_var_3] []
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happyReduce 5 5 happyReduction_9
happyReduction_9 ((HappyAbsSyn21  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncStm  happy_var_1 [happy_var_3] (reverse happy_var_5)
	) `HappyStk` happyRest

happyReduce_10 = happyReduce 5 5 happyReduction_10
happyReduction_10 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncStm  happy_var_1      (reverse happy_var_4)  []
	) `HappyStk` happyRest

happyReduce_11 = happyReduce 7 5 happyReduction_11
happyReduction_11 ((HappyAbsSyn21  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncStm  happy_var_1      (reverse happy_var_4)  (reverse happy_var_7)
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_2  5 happyReduction_12
happyReduction_12 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Eval happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  6 happyReduction_13
happyReduction_13 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_2  6 happyReduction_14
happyReduction_14 _
	_
	 =  HappyAbsSyn6
		 (VoidExp
	)

happyReduce_15 = happySpecReduce_3  6 happyReduction_15
happyReduction_15 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenIdent _ happy_var_1))
	 =  HappyAbsSyn6
		 (LetExp    happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  6 happyReduction_16
happyReduction_16 (HappyTerminal (TokenIdent _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarExp       happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  6 happyReduction_17
happyReduction_17 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenIdent _ happy_var_1))
	 =  HappyAbsSyn6
		 (LambdaExp happy_var_1 [happy_var_3]
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happyReduce 5 6 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (LambdaExp happy_var_1  happy_var_4
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_1  6 happyReduction_19
happyReduction_19 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn6
		 (ConstExp     happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  6 happyReduction_20
happyReduction_20 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (OpExp "+" happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  6 happyReduction_21
happyReduction_21 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (OpExp "-" happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  6 happyReduction_22
happyReduction_22 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (OpExp "*" happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  6 happyReduction_23
happyReduction_23 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (OpExp "/" happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happyReduce 4 6 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (CallExp   happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 4 6 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenMacroCall _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (MacroExp  happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_1  6 happyReduction_26
happyReduction_26 (HappyTerminal (TokenType  _ happy_var_1))
	 =  HappyAbsSyn6
		 (TypeCon   happy_var_1 []
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happyReduce 4 6 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenType  _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TypeCon   happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_28 = happyReduce 5 6 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (CaseExp   happy_var_2 (reverse happy_var_4)
	) `HappyStk` happyRest

happyReduce_29 = happySpecReduce_1  6 happyReduction_29
happyReduction_29 (HappyTerminal (TokenHole  _ happy_var_1))
	 =  HappyAbsSyn6
		 (HoleExp      happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  6 happyReduction_30
happyReduction_30 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (ListExp (reverse happy_var_2)
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  6 happyReduction_31
happyReduction_31 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  6 happyReduction_32
happyReduction_32 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (TupleExp (reverse happy_var_2)
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happyReduce 5 6 happyReduction_33
happyReduction_33 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (IfExp   happy_var_2 (reverse happy_var_4)
	) `HappyStk` happyRest

happyReduce_34 = happyReduce 4 6 happyReduction_34
happyReduction_34 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ElseExp    (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_35 = happyReduce 7 6 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ForExp happy_var_2 happy_var_4 (reverse happy_var_6)
	) `HappyStk` happyRest

happyReduce_36 = happySpecReduce_1  7 happyReduction_36
happyReduction_36 (HappyTerminal (TokenIdent _ happy_var_1))
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  7 happyReduction_37
happyReduction_37 (HappyTerminal (TokenHole  _ happy_var_1))
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  7 happyReduction_38
happyReduction_38 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happyReduce 5 8 happyReduction_39
happyReduction_39 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (RangeExp (Bound happy_var_2) (Bound happy_var_4)     1
	) `HappyStk` happyRest

happyReduce_40 = happyReduce 4 8 happyReduction_40
happyReduction_40 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (RangeExp (Bound  0) (Bound happy_var_3)     1
	) `HappyStk` happyRest

happyReduce_41 = happyReduce 4 8 happyReduction_41
happyReduction_41 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (RangeExp (Bound happy_var_2)  Inf           2
	) `HappyStk` happyRest

happyReduce_42 = happySpecReduce_3  8 happyReduction_42
happyReduction_42 _
	_
	_
	 =  HappyAbsSyn8
		 (RangeExp  NInf       Inf           1
	)

happyReduce_43 = happyReduce 5 8 happyReduction_43
happyReduction_43 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (RangeExp (Bound happy_var_2) (Bound (happy_var_4-1)) 1
	) `HappyStk` happyRest

happyReduce_44 = happyReduce 4 8 happyReduction_44
happyReduction_44 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (RangeExp (Bound  0) (Bound (happy_var_3-1)) 1
	) `HappyStk` happyRest

happyReduce_45 = happySpecReduce_0  9 happyReduction_45
happyReduction_45  =  HappyAbsSyn9
		 ([    ]
	)

happyReduce_46 = happySpecReduce_1  9 happyReduction_46
happyReduction_46 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn9
		 ([ happy_var_1 ]
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  9 happyReduction_47
happyReduction_47 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_3 : happy_var_1
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  10 happyReduction_48
happyReduction_48 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_3, happy_var_1]
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  10 happyReduction_49
happyReduction_49 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_3 : happy_var_1
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  11 happyReduction_50
happyReduction_50 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 ([ happy_var_1 ]
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  11 happyReduction_51
happyReduction_51 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_3 : happy_var_1
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  12 happyReduction_52
happyReduction_52 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn12
		 ((happy_var_1 , happy_var_3)
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  13 happyReduction_53
happyReduction_53 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 ([ happy_var_1 ]
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  13 happyReduction_54
happyReduction_54 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_3 : happy_var_1
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_3  14 happyReduction_55
happyReduction_55 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn14
		 ((reverse happy_var_1 ,        [happy_var_3])
	)
happyReduction_55 _ _ _  = notHappyAtAll 

happyReduce_56 = happyReduce 5 14 happyReduction_56
happyReduction_56 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 ((reverse happy_var_1 , reverse happy_var_4 )
	) `HappyStk` happyRest

happyReduce_57 = happySpecReduce_1  15 happyReduction_57
happyReduction_57 (HappyTerminal (TokenInt   _ happy_var_1))
	 =  HappyAbsSyn15
		 (Int32 happy_var_1
	)
happyReduction_57 _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  15 happyReduction_58
happyReduction_58 (HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn15
		 (Str   happy_var_1
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_1  15 happyReduction_59
happyReduction_59 (HappyTerminal (TokenChar   _ happy_var_1))
	 =  HappyAbsSyn15
		 (Chr   happy_var_1
	)
happyReduction_59 _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_1  16 happyReduction_60
happyReduction_60 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn16
		 ([ happy_var_1 ]
	)
happyReduction_60 _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_3  16 happyReduction_61
happyReduction_61 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_3 : happy_var_1
	)
happyReduction_61 _ _ _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_2  16 happyReduction_62
happyReduction_62 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_2 : happy_var_1
	)
happyReduction_62 _ _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_1  17 happyReduction_63
happyReduction_63 (HappyTerminal (TokenType  _ happy_var_1))
	 =  HappyAbsSyn17
		 (TypeN happy_var_1 []
	)
happyReduction_63 _  = notHappyAtAll 

happyReduce_64 = happyReduce 4 17 happyReduction_64
happyReduction_64 (_ `HappyStk`
	(HappyAbsSyn20  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenType  _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (TypeN happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_65 = happySpecReduce_2  17 happyReduction_65
happyReduction_65 _
	_
	 =  HappyAbsSyn17
		 (VoidType
	)

happyReduce_66 = happySpecReduce_1  17 happyReduction_66
happyReduction_66 (HappyTerminal (TokenIdent _ happy_var_1))
	 =  HappyAbsSyn17
		 (TypeVar happy_var_1
	)
happyReduction_66 _  = notHappyAtAll 

happyReduce_67 = happySpecReduce_1  18 happyReduction_67
happyReduction_67 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn18
		 ([ happy_var_1 ]
	)
happyReduction_67 _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_3  18 happyReduction_68
happyReduction_68 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_3 : happy_var_1
	)
happyReduction_68 _ _ _  = notHappyAtAll 

happyReduce_69 = happySpecReduce_1  19 happyReduction_69
happyReduction_69 (HappyTerminal (TokenType  _ happy_var_1))
	 =  HappyAbsSyn19
		 ((happy_var_1, [])
	)
happyReduction_69 _  = notHappyAtAll 

happyReduce_70 = happyReduce 4 19 happyReduction_70
happyReduction_70 (_ `HappyStk`
	(HappyAbsSyn20  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenType  _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 ((happy_var_1, reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_71 = happySpecReduce_1  20 happyReduction_71
happyReduction_71 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn20
		 ([ happy_var_1 ]
	)
happyReduction_71 _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_3  20 happyReduction_72
happyReduction_72 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_3 : happy_var_1
	)
happyReduction_72 _ _ _  = notHappyAtAll 

happyReduce_73 = happySpecReduce_1  21 happyReduction_73
happyReduction_73 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn21
		 ([ happy_var_1 ]
	)
happyReduction_73 _  = notHappyAtAll 

happyReduce_74 = happySpecReduce_3  21 happyReduction_74
happyReduction_74 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn21
		 (happy_var_3 : happy_var_1
	)
happyReduction_74 _ _ _  = notHappyAtAll 

happyReduce_75 = happySpecReduce_3  22 happyReduction_75
happyReduction_75 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn22
		 (happy_var_3 : happy_var_1
	)
happyReduction_75 _ _ _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_1  23 happyReduction_76
happyReduction_76 (HappyTerminal (TokenIdent _ happy_var_1))
	 =  HappyAbsSyn23
		 ([ happy_var_1 ]
	)
happyReduction_76 _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_3  23 happyReduction_77
happyReduction_77 (HappyTerminal (TokenIdent _ happy_var_3))
	_
	(HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn23
		 (happy_var_3 : happy_var_1
	)
happyReduction_77 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 58 58 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenArrow       _ -> cont 24;
	TokenDoubleArrow _ -> cont 25;
	TokenLeftArrow   _ -> cont 26;
	TokenData        _ -> cont 27;
	TokenTypeSign    _ -> cont 28;
	TokenSemi        _ -> cont 29;
	TokenComma       _ -> cont 30;
	TokenDot         _ -> cont 31;
	TokenString _ happy_dollar_dollar -> cont 32;
	TokenChar   _ happy_dollar_dollar -> cont 33;
	TokenAssign      _ -> cont 34;
	TokenLParen      _ -> cont 35;
	TokenRParen      _ -> cont 36;
	TokenLBracket    _ -> cont 37;
	TokenRBracket    _ -> cont 38;
	TokenLList       _ -> cont 39;
	TokenRList       _ -> cont 40;
	BinOp _ "<" -> cont 41;
	BinOp _ ">" -> cont 42;
	BinOp _ "-" -> cont 43;
	BinOp _ "+" -> cont 44;
	BinOp _ "*" -> cont 45;
	BinOp _ "/" -> cont 46;
	TokenIdent _ happy_dollar_dollar -> cont 47;
	TokenMacroCall _ happy_dollar_dollar -> cont 48;
	TokenInt   _ happy_dollar_dollar -> cont 49;
	TokenType  _ happy_dollar_dollar -> cont 50;
	TokenHole  _ happy_dollar_dollar -> cont 51;
	Builtin _ "case" -> cont 52;
	Builtin _ "if" -> cont 53;
	Builtin _ "else" -> cont 54;
	Builtin _ "for" -> cont 55;
	Builtin _ "in" -> cont 56;
	BinOp _ happy_dollar_dollar -> cont 57;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 58 tk tks = happyError' (tks, explist)
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

errorText :: [Token] -> String
errorText tokens = "\nparse error at " ++ 
     "line \x1b[0;32m" ++ show line ++ "\x1b[0m" ++
     ", column \x1b[0;32m" ++ show column ++ "\x1b[0m\n" ++
     linewidth ++ "|\n" ++
     show line ++ "|" ++ wholeLine ++ "\n" ++
     linewidth ++ "|" ++
     "\n\x1b[0;31m" ++ linewidth ++ " ^\x1b[0m"
          where pos       = Lexer.tokenPosn (head tokens)
                column    = Lexer.getCNum pos
                line      = Lexer.getLNum pos
                linewidth = replicate (length $ show line) ' '
                wholeLine = show $ getWholeLine tokens line

parseError :: [Token] -> a
parseError [    ] = errorWithoutStackTrace "parse error"
parseError tokens = errorWithoutStackTrace $ errorText tokens

type Program = [ Stm ]

instance {-# OVERLAPPING #-} Show Program where
    show = intercalate "\n" . map show

data Range = Bound Exp
           | Inf 
           | NInf 
           deriving Show

data Types = VoidType
           | TypeN String [ Types ]
           | TypeVar String
           deriving Show

data Exp = VoidExp
         | MacroExp  Name [ Exp ]
         | VarExp    Name
         | LambdaExp Name [ Exp ]
         | LetExp    Name Exp
         | ConstExp  Const
         | OpExp     Name Exp Exp
         | CallExp   Name [ Exp ]
         | TypeCon   Name [ Exp ]
         | CaseExp   Exp  [ (Exp, Exp) ]
         | HoleExp   String
         | ListExp   [ Exp ]
         | RangeExp  Range Range Int
         | ConsExp   Exp Exp
         | TupleExp  [ Exp ]
         | IfExp     Exp [ Exp ]
         | ElseExp   [ Exp ]
         | ForExp    Name Exp [ Exp ]
         deriving Show

instance Num Exp where
     (+) = OpExp "+"
     (-) = OpExp "-"
     (*) = OpExp "*"
     fromInteger = ConstExp . Int32 . fromInteger

data Const = Int32 Int
           | Str   String
           | Chr   Char
           deriving Show

type TypeSign = [ Types ] 

data Stm = TypeStm Name [ Name ] [ (Name, [Types]) ]
         | SignStm Name TypeSign
         | FuncStm Name [ Exp ] TypeSign
         | PatternStm Name TypeSign [ ([ Exp ], [ Exp ]) ]
         | Class
         | Export String
         | Instance
         | Eval Exp
         deriving Show

type Name  = String

parse :: String -> IO ()
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
