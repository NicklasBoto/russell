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

data HappyAbsSyn t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,324) ([0,0,2304,0,0,36864,0,0,0,9,0,0,0,0,33280,0,0,4096,1024,0,0,0,9,0,0,0,0,0,4,0,0,4096,0,0,256,9,0,22016,8177,0,512,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,61750,31,0,4448,511,0,5888,8177,0,160,1,0,0,16,0,0,0,0,0,4096,0,0,0,0,0,0,61718,31,0,4448,511,0,16384,0,0,0,256,0,0,64,0,8192,0,0,0,16384,0,0,0,2,0,0,0,0,0,16384,0,0,0,8,0,0,2048,0,16384,128,0,0,0,0,0,4096,0,0,256,0,0,0,36880,0,0,0,0,0,5632,8177,0,0,2305,0,0,61718,31,0,0,512,0,5632,8177,0,0,4,4,0,64,64,0,4448,511,0,5632,8177,0,24576,65297,1,0,61718,31,0,4448,511,0,0,16384,0,2048,32,0,0,16896,0,0,16,0,0,0,16384,0,1024,8,0,32768,32,64,0,520,0,0,0,0,0,0,2305,0,0,61718,31,0,0,0,0,0,0,0,32,0,0,0,61718,31,0,0,0,0,5632,8177,0,0,0,0,0,61718,31,0,2,0,0,0,66,0,0,0,0,0,544,0,0,4448,511,0,0,0,0,2048,2,0,0,0,64,0,0,1024,0,8320,0,0,2048,2,0,0,61718,31,0,4448,511,0,32832,0,0,24576,65297,1,16384,128,0,0,0,0,0,132,0,0,1024,8,0,0,0,0,0,0,0,0,128,8,0,0,4,0,0,36880,0,0,0,8,0,0,0,0,0,0,0,32768,32,0,0,0,8,0,4096,144,0,0,0,0,0,61718,31,0,0,0,0,22016,8177,0,0,0,0,0,64,64,0,0,0,0,32832,0,0,64,0,4,16384,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,8704,0,0,4096,144,0,0,0,4,0,0,64,0,0,1024,0,4096,144,0,0,0,0,512,0,0,0,0,0,0,0,0,0,24576,65297,1,0,0,0,0,4448,511,0,0,0,0,24576,65297,1,0,0,64,0,4448,511,0,0,0,0,0,0,0,16384,128,0,0,0,0,0,0,0,0,1024,8,0,16384,128,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Stms","Stm","Exp","Range","Args","Args1","Case","Case1","Pattern","Pattern1","Const","Exps","Types","TypeDef","TypeCons","TypeArgs","Type","Type1","\"->\"","\"=>\"","\"<-\"","\"::=\"","\":\"","\";\"","\",\"","\"..\"","str","chr","\"=\"","\"(\"","\")\"","\"{\"","\"}\"","\"[\"","\"]\"","\"<\"","\">\"","ident","macro","int","type","hole","case","if","else","for","in","binop","%eof"]
        bit_start = st Prelude.* 52
        bit_end = (st Prelude.+ 1) Prelude.* 52
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..51]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (41) = happyShift action_4
action_0 (44) = happyShift action_5
action_0 (4) = happyGoto action_6
action_0 (5) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (41) = happyShift action_4
action_1 (44) = happyShift action_5
action_1 (4) = happyGoto action_2
action_1 (5) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (41) = happyShift action_4
action_2 (44) = happyShift action_5
action_2 (5) = happyGoto action_7
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_2

action_4 (26) = happyShift action_10
action_4 (32) = happyShift action_11
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (25) = happyShift action_8
action_5 (39) = happyShift action_9
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (41) = happyShift action_4
action_6 (44) = happyShift action_5
action_6 (52) = happyAccept
action_6 (5) = happyGoto action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_1

action_8 (35) = happyShift action_36
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (41) = happyShift action_35
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (33) = happyShift action_32
action_10 (41) = happyShift action_33
action_10 (44) = happyShift action_34
action_10 (16) = happyGoto action_29
action_10 (20) = happyGoto action_30
action_10 (21) = happyGoto action_31
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (30) = happyShift action_15
action_11 (31) = happyShift action_16
action_11 (33) = happyShift action_17
action_11 (35) = happyShift action_18
action_11 (37) = happyShift action_19
action_11 (41) = happyShift action_20
action_11 (42) = happyShift action_21
action_11 (43) = happyShift action_22
action_11 (44) = happyShift action_23
action_11 (45) = happyShift action_24
action_11 (46) = happyShift action_25
action_11 (47) = happyShift action_26
action_11 (48) = happyShift action_27
action_11 (49) = happyShift action_28
action_11 (6) = happyGoto action_12
action_11 (7) = happyGoto action_13
action_11 (14) = happyGoto action_14
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (26) = happyShift action_64
action_12 (51) = happyShift action_65
action_12 _ = happyReduce_8

action_13 _ = happyReduce_26

action_14 _ = happyReduce_18

action_15 _ = happyReduce_50

action_16 _ = happyReduce_51

action_17 (30) = happyShift action_15
action_17 (31) = happyShift action_16
action_17 (33) = happyShift action_17
action_17 (34) = happyShift action_63
action_17 (37) = happyShift action_19
action_17 (41) = happyShift action_20
action_17 (42) = happyShift action_21
action_17 (43) = happyShift action_22
action_17 (44) = happyShift action_23
action_17 (45) = happyShift action_24
action_17 (46) = happyShift action_25
action_17 (47) = happyShift action_26
action_17 (48) = happyShift action_27
action_17 (49) = happyShift action_28
action_17 (6) = happyGoto action_61
action_17 (7) = happyGoto action_13
action_17 (9) = happyGoto action_62
action_17 (14) = happyGoto action_14
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (30) = happyShift action_15
action_18 (31) = happyShift action_16
action_18 (33) = happyShift action_17
action_18 (37) = happyShift action_19
action_18 (41) = happyShift action_20
action_18 (42) = happyShift action_21
action_18 (43) = happyShift action_22
action_18 (44) = happyShift action_23
action_18 (45) = happyShift action_24
action_18 (46) = happyShift action_25
action_18 (47) = happyShift action_26
action_18 (48) = happyShift action_27
action_18 (49) = happyShift action_28
action_18 (6) = happyGoto action_59
action_18 (7) = happyGoto action_13
action_18 (14) = happyGoto action_14
action_18 (15) = happyGoto action_60
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (29) = happyShift action_57
action_19 (30) = happyShift action_15
action_19 (31) = happyShift action_16
action_19 (33) = happyShift action_17
action_19 (37) = happyShift action_19
action_19 (41) = happyShift action_20
action_19 (42) = happyShift action_21
action_19 (43) = happyShift action_58
action_19 (44) = happyShift action_23
action_19 (45) = happyShift action_24
action_19 (46) = happyShift action_25
action_19 (47) = happyShift action_26
action_19 (48) = happyShift action_27
action_19 (49) = happyShift action_28
action_19 (6) = happyGoto action_55
action_19 (7) = happyGoto action_13
action_19 (8) = happyGoto action_56
action_19 (14) = happyGoto action_14
action_19 _ = happyReduce_37

action_20 (22) = happyShift action_52
action_20 (24) = happyShift action_53
action_20 (33) = happyShift action_54
action_20 _ = happyReduce_16

action_21 (33) = happyShift action_51
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_49

action_23 (33) = happyShift action_50
action_23 _ = happyReduce_21

action_24 _ = happyReduce_24

action_25 (30) = happyShift action_15
action_25 (31) = happyShift action_16
action_25 (33) = happyShift action_17
action_25 (37) = happyShift action_19
action_25 (41) = happyShift action_20
action_25 (42) = happyShift action_21
action_25 (43) = happyShift action_22
action_25 (44) = happyShift action_23
action_25 (45) = happyShift action_24
action_25 (46) = happyShift action_25
action_25 (47) = happyShift action_26
action_25 (48) = happyShift action_27
action_25 (49) = happyShift action_28
action_25 (6) = happyGoto action_49
action_25 (7) = happyGoto action_13
action_25 (14) = happyGoto action_14
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (30) = happyShift action_15
action_26 (31) = happyShift action_16
action_26 (33) = happyShift action_17
action_26 (37) = happyShift action_19
action_26 (41) = happyShift action_20
action_26 (42) = happyShift action_21
action_26 (43) = happyShift action_22
action_26 (44) = happyShift action_23
action_26 (45) = happyShift action_24
action_26 (46) = happyShift action_25
action_26 (47) = happyShift action_26
action_26 (48) = happyShift action_27
action_26 (49) = happyShift action_28
action_26 (6) = happyGoto action_48
action_26 (7) = happyGoto action_13
action_26 (14) = happyGoto action_14
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (35) = happyShift action_47
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (41) = happyShift action_46
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (35) = happyShift action_45
action_29 _ = happyReduce_64

action_30 (22) = happyShift action_44
action_30 _ = happyReduce_5

action_31 (35) = happyShift action_43
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (34) = happyShift action_42
action_32 _ = happyFail (happyExpListPerState 32)

action_33 _ = happyReduce_57

action_34 (39) = happyShift action_41
action_34 _ = happyReduce_54

action_35 (40) = happyShift action_40
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (44) = happyShift action_39
action_36 (17) = happyGoto action_37
action_36 (18) = happyGoto action_38
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (27) = happyShift action_98
action_37 (36) = happyShift action_99
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_58

action_39 (33) = happyShift action_97
action_39 _ = happyReduce_60

action_40 (25) = happyShift action_96
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (33) = happyShift action_32
action_41 (41) = happyShift action_33
action_41 (44) = happyShift action_34
action_41 (16) = happyGoto action_94
action_41 (19) = happyGoto action_95
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_56

action_43 (30) = happyShift action_15
action_43 (31) = happyShift action_16
action_43 (33) = happyShift action_17
action_43 (37) = happyShift action_19
action_43 (41) = happyShift action_20
action_43 (42) = happyShift action_21
action_43 (43) = happyShift action_22
action_43 (44) = happyShift action_23
action_43 (45) = happyShift action_24
action_43 (46) = happyShift action_25
action_43 (47) = happyShift action_26
action_43 (48) = happyShift action_27
action_43 (49) = happyShift action_28
action_43 (6) = happyGoto action_55
action_43 (7) = happyGoto action_13
action_43 (8) = happyGoto action_91
action_43 (12) = happyGoto action_92
action_43 (13) = happyGoto action_93
action_43 (14) = happyGoto action_14
action_43 _ = happyReduce_37

action_44 (33) = happyShift action_32
action_44 (41) = happyShift action_33
action_44 (44) = happyShift action_34
action_44 (16) = happyGoto action_90
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (30) = happyShift action_15
action_45 (31) = happyShift action_16
action_45 (33) = happyShift action_17
action_45 (37) = happyShift action_19
action_45 (41) = happyShift action_20
action_45 (42) = happyShift action_21
action_45 (43) = happyShift action_22
action_45 (44) = happyShift action_23
action_45 (45) = happyShift action_24
action_45 (46) = happyShift action_25
action_45 (47) = happyShift action_26
action_45 (48) = happyShift action_27
action_45 (49) = happyShift action_28
action_45 (6) = happyGoto action_59
action_45 (7) = happyGoto action_13
action_45 (14) = happyGoto action_14
action_45 (15) = happyGoto action_89
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (50) = happyShift action_88
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (30) = happyShift action_15
action_47 (31) = happyShift action_16
action_47 (33) = happyShift action_17
action_47 (37) = happyShift action_19
action_47 (41) = happyShift action_20
action_47 (42) = happyShift action_21
action_47 (43) = happyShift action_22
action_47 (44) = happyShift action_23
action_47 (45) = happyShift action_24
action_47 (46) = happyShift action_25
action_47 (47) = happyShift action_26
action_47 (48) = happyShift action_27
action_47 (49) = happyShift action_28
action_47 (6) = happyGoto action_59
action_47 (7) = happyGoto action_13
action_47 (14) = happyGoto action_14
action_47 (15) = happyGoto action_87
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (35) = happyShift action_86
action_48 (51) = happyShift action_65
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (35) = happyShift action_85
action_49 (51) = happyShift action_65
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (30) = happyShift action_15
action_50 (31) = happyShift action_16
action_50 (33) = happyShift action_17
action_50 (37) = happyShift action_19
action_50 (41) = happyShift action_20
action_50 (42) = happyShift action_21
action_50 (43) = happyShift action_22
action_50 (44) = happyShift action_23
action_50 (45) = happyShift action_24
action_50 (46) = happyShift action_25
action_50 (47) = happyShift action_26
action_50 (48) = happyShift action_27
action_50 (49) = happyShift action_28
action_50 (6) = happyGoto action_55
action_50 (7) = happyGoto action_13
action_50 (8) = happyGoto action_84
action_50 (14) = happyGoto action_14
action_50 _ = happyReduce_37

action_51 (30) = happyShift action_15
action_51 (31) = happyShift action_16
action_51 (33) = happyShift action_17
action_51 (37) = happyShift action_19
action_51 (41) = happyShift action_20
action_51 (42) = happyShift action_21
action_51 (43) = happyShift action_22
action_51 (44) = happyShift action_23
action_51 (45) = happyShift action_24
action_51 (46) = happyShift action_25
action_51 (47) = happyShift action_26
action_51 (48) = happyShift action_27
action_51 (49) = happyShift action_28
action_51 (6) = happyGoto action_55
action_51 (7) = happyGoto action_13
action_51 (8) = happyGoto action_83
action_51 (14) = happyGoto action_14
action_51 _ = happyReduce_37

action_52 (30) = happyShift action_15
action_52 (31) = happyShift action_16
action_52 (33) = happyShift action_17
action_52 (37) = happyShift action_19
action_52 (41) = happyShift action_20
action_52 (42) = happyShift action_21
action_52 (43) = happyShift action_22
action_52 (44) = happyShift action_23
action_52 (45) = happyShift action_24
action_52 (46) = happyShift action_25
action_52 (47) = happyShift action_26
action_52 (48) = happyShift action_27
action_52 (49) = happyShift action_28
action_52 (6) = happyGoto action_82
action_52 (7) = happyGoto action_13
action_52 (14) = happyGoto action_14
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (30) = happyShift action_15
action_53 (31) = happyShift action_16
action_53 (33) = happyShift action_17
action_53 (37) = happyShift action_19
action_53 (41) = happyShift action_20
action_53 (42) = happyShift action_21
action_53 (43) = happyShift action_22
action_53 (44) = happyShift action_23
action_53 (45) = happyShift action_24
action_53 (46) = happyShift action_25
action_53 (47) = happyShift action_26
action_53 (48) = happyShift action_27
action_53 (49) = happyShift action_28
action_53 (6) = happyGoto action_81
action_53 (7) = happyGoto action_13
action_53 (14) = happyGoto action_14
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (30) = happyShift action_15
action_54 (31) = happyShift action_16
action_54 (33) = happyShift action_17
action_54 (37) = happyShift action_19
action_54 (41) = happyShift action_20
action_54 (42) = happyShift action_21
action_54 (43) = happyShift action_22
action_54 (44) = happyShift action_23
action_54 (45) = happyShift action_24
action_54 (46) = happyShift action_25
action_54 (47) = happyShift action_26
action_54 (48) = happyShift action_27
action_54 (49) = happyShift action_28
action_54 (6) = happyGoto action_55
action_54 (7) = happyGoto action_13
action_54 (8) = happyGoto action_80
action_54 (14) = happyGoto action_14
action_54 _ = happyReduce_37

action_55 (51) = happyShift action_65
action_55 _ = happyReduce_38

action_56 (28) = happyShift action_78
action_56 (38) = happyShift action_79
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (38) = happyShift action_76
action_57 (43) = happyShift action_77
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (29) = happyShift action_75
action_58 _ = happyReduce_49

action_59 (51) = happyShift action_65
action_59 _ = happyReduce_52

action_60 (27) = happyShift action_73
action_60 (36) = happyShift action_74
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (28) = happyShift action_71
action_61 (34) = happyShift action_72
action_61 (51) = happyShift action_65
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (28) = happyShift action_69
action_62 (34) = happyShift action_70
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_13

action_64 (33) = happyShift action_32
action_64 (41) = happyShift action_33
action_64 (44) = happyShift action_34
action_64 (16) = happyGoto action_67
action_64 (20) = happyGoto action_68
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (30) = happyShift action_15
action_65 (31) = happyShift action_16
action_65 (33) = happyShift action_17
action_65 (37) = happyShift action_19
action_65 (41) = happyShift action_20
action_65 (42) = happyShift action_21
action_65 (43) = happyShift action_22
action_65 (44) = happyShift action_23
action_65 (45) = happyShift action_24
action_65 (46) = happyShift action_25
action_65 (47) = happyShift action_26
action_65 (48) = happyShift action_27
action_65 (49) = happyShift action_28
action_65 (6) = happyGoto action_66
action_65 (7) = happyGoto action_13
action_65 (14) = happyGoto action_14
action_65 _ = happyFail (happyExpListPerState 65)

action_66 _ = happyReduce_14

action_67 _ = happyReduce_64

action_68 (22) = happyShift action_127
action_68 _ = happyReduce_9

action_69 (30) = happyShift action_15
action_69 (31) = happyShift action_16
action_69 (33) = happyShift action_17
action_69 (37) = happyShift action_19
action_69 (41) = happyShift action_20
action_69 (42) = happyShift action_21
action_69 (43) = happyShift action_22
action_69 (44) = happyShift action_23
action_69 (45) = happyShift action_24
action_69 (46) = happyShift action_25
action_69 (47) = happyShift action_26
action_69 (48) = happyShift action_27
action_69 (49) = happyShift action_28
action_69 (6) = happyGoto action_126
action_69 (7) = happyGoto action_13
action_69 (14) = happyGoto action_14
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_27

action_71 (30) = happyShift action_15
action_71 (31) = happyShift action_16
action_71 (33) = happyShift action_17
action_71 (37) = happyShift action_19
action_71 (41) = happyShift action_20
action_71 (42) = happyShift action_21
action_71 (43) = happyShift action_22
action_71 (44) = happyShift action_23
action_71 (45) = happyShift action_24
action_71 (46) = happyShift action_25
action_71 (47) = happyShift action_26
action_71 (48) = happyShift action_27
action_71 (49) = happyShift action_28
action_71 (6) = happyGoto action_125
action_71 (7) = happyGoto action_13
action_71 (14) = happyGoto action_14
action_71 _ = happyFail (happyExpListPerState 71)

action_72 _ = happyReduce_12

action_73 (30) = happyShift action_15
action_73 (31) = happyShift action_16
action_73 (33) = happyShift action_17
action_73 (37) = happyShift action_19
action_73 (41) = happyShift action_20
action_73 (42) = happyShift action_21
action_73 (43) = happyShift action_22
action_73 (44) = happyShift action_23
action_73 (45) = happyShift action_24
action_73 (46) = happyShift action_25
action_73 (47) = happyShift action_26
action_73 (48) = happyShift action_27
action_73 (49) = happyShift action_28
action_73 (6) = happyGoto action_124
action_73 (7) = happyGoto action_13
action_73 (14) = happyGoto action_14
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (26) = happyShift action_123
action_74 _ = happyReduce_10

action_75 (38) = happyShift action_121
action_75 (43) = happyShift action_122
action_75 _ = happyFail (happyExpListPerState 75)

action_76 _ = happyReduce_34

action_77 (34) = happyShift action_119
action_77 (38) = happyShift action_120
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (30) = happyShift action_15
action_78 (31) = happyShift action_16
action_78 (33) = happyShift action_17
action_78 (37) = happyShift action_19
action_78 (41) = happyShift action_20
action_78 (42) = happyShift action_21
action_78 (43) = happyShift action_22
action_78 (44) = happyShift action_23
action_78 (45) = happyShift action_24
action_78 (46) = happyShift action_25
action_78 (47) = happyShift action_26
action_78 (48) = happyShift action_27
action_78 (49) = happyShift action_28
action_78 (6) = happyGoto action_118
action_78 (7) = happyGoto action_13
action_78 (14) = happyGoto action_14
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_25

action_80 (28) = happyShift action_78
action_80 (34) = happyShift action_117
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (51) = happyShift action_65
action_81 _ = happyReduce_15

action_82 (51) = happyShift action_65
action_82 _ = happyReduce_17

action_83 (28) = happyShift action_78
action_83 (34) = happyShift action_116
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (28) = happyShift action_78
action_84 (34) = happyShift action_115
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (30) = happyShift action_15
action_85 (31) = happyShift action_16
action_85 (33) = happyShift action_17
action_85 (37) = happyShift action_19
action_85 (41) = happyShift action_20
action_85 (42) = happyShift action_21
action_85 (43) = happyShift action_22
action_85 (44) = happyShift action_23
action_85 (45) = happyShift action_24
action_85 (46) = happyShift action_25
action_85 (47) = happyShift action_26
action_85 (48) = happyShift action_27
action_85 (49) = happyShift action_28
action_85 (6) = happyGoto action_112
action_85 (7) = happyGoto action_13
action_85 (10) = happyGoto action_113
action_85 (11) = happyGoto action_114
action_85 (14) = happyGoto action_14
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (30) = happyShift action_15
action_86 (31) = happyShift action_16
action_86 (33) = happyShift action_17
action_86 (37) = happyShift action_19
action_86 (41) = happyShift action_20
action_86 (42) = happyShift action_21
action_86 (43) = happyShift action_22
action_86 (44) = happyShift action_23
action_86 (45) = happyShift action_24
action_86 (46) = happyShift action_25
action_86 (47) = happyShift action_26
action_86 (48) = happyShift action_27
action_86 (49) = happyShift action_28
action_86 (6) = happyGoto action_59
action_86 (7) = happyGoto action_13
action_86 (14) = happyGoto action_14
action_86 (15) = happyGoto action_111
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (27) = happyShift action_73
action_87 (36) = happyShift action_110
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (30) = happyShift action_15
action_88 (31) = happyShift action_16
action_88 (33) = happyShift action_17
action_88 (37) = happyShift action_19
action_88 (41) = happyShift action_20
action_88 (42) = happyShift action_21
action_88 (43) = happyShift action_22
action_88 (44) = happyShift action_23
action_88 (45) = happyShift action_24
action_88 (46) = happyShift action_25
action_88 (47) = happyShift action_26
action_88 (48) = happyShift action_27
action_88 (49) = happyShift action_28
action_88 (6) = happyGoto action_109
action_88 (7) = happyGoto action_13
action_88 (14) = happyGoto action_14
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (27) = happyShift action_73
action_89 (36) = happyShift action_108
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (35) = happyReduce_66
action_90 _ = happyReduce_65

action_91 (23) = happyShift action_107
action_91 (28) = happyShift action_78
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (27) = happyShift action_105
action_92 (36) = happyShift action_106
action_92 _ = happyFail (happyExpListPerState 92)

action_93 _ = happyReduce_45

action_94 _ = happyReduce_62

action_95 (28) = happyShift action_103
action_95 (40) = happyShift action_104
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (35) = happyShift action_102
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (33) = happyShift action_32
action_97 (41) = happyShift action_33
action_97 (44) = happyShift action_34
action_97 (16) = happyGoto action_94
action_97 (19) = happyGoto action_101
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (44) = happyShift action_39
action_98 (18) = happyGoto action_100
action_98 _ = happyFail (happyExpListPerState 98)

action_99 _ = happyReduce_3

action_100 _ = happyReduce_59

action_101 (28) = happyShift action_103
action_101 (34) = happyShift action_142
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (44) = happyShift action_39
action_102 (17) = happyGoto action_141
action_102 (18) = happyGoto action_38
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (33) = happyShift action_32
action_103 (41) = happyShift action_33
action_103 (44) = happyShift action_34
action_103 (16) = happyGoto action_140
action_103 _ = happyFail (happyExpListPerState 103)

action_104 _ = happyReduce_55

action_105 (30) = happyShift action_15
action_105 (31) = happyShift action_16
action_105 (33) = happyShift action_17
action_105 (37) = happyShift action_19
action_105 (41) = happyShift action_20
action_105 (42) = happyShift action_21
action_105 (43) = happyShift action_22
action_105 (44) = happyShift action_23
action_105 (45) = happyShift action_24
action_105 (46) = happyShift action_25
action_105 (47) = happyShift action_26
action_105 (48) = happyShift action_27
action_105 (49) = happyShift action_28
action_105 (6) = happyGoto action_55
action_105 (7) = happyGoto action_13
action_105 (8) = happyGoto action_91
action_105 (13) = happyGoto action_139
action_105 (14) = happyGoto action_14
action_105 _ = happyReduce_37

action_106 _ = happyReduce_7

action_107 (30) = happyShift action_15
action_107 (31) = happyShift action_16
action_107 (33) = happyShift action_17
action_107 (35) = happyShift action_138
action_107 (37) = happyShift action_19
action_107 (41) = happyShift action_20
action_107 (42) = happyShift action_21
action_107 (43) = happyShift action_22
action_107 (44) = happyShift action_23
action_107 (45) = happyShift action_24
action_107 (46) = happyShift action_25
action_107 (47) = happyShift action_26
action_107 (48) = happyShift action_27
action_107 (49) = happyShift action_28
action_107 (6) = happyGoto action_137
action_107 (7) = happyGoto action_13
action_107 (14) = happyGoto action_14
action_107 _ = happyFail (happyExpListPerState 107)

action_108 _ = happyReduce_6

action_109 (35) = happyShift action_136
action_109 (51) = happyShift action_65
action_109 _ = happyFail (happyExpListPerState 109)

action_110 _ = happyReduce_29

action_111 (27) = happyShift action_73
action_111 (36) = happyShift action_135
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (23) = happyShift action_134
action_112 (51) = happyShift action_65
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (27) = happyShift action_132
action_113 (36) = happyShift action_133
action_113 _ = happyFail (happyExpListPerState 113)

action_114 _ = happyReduce_42

action_115 _ = happyReduce_22

action_116 _ = happyReduce_20

action_117 _ = happyReduce_19

action_118 (51) = happyShift action_65
action_118 _ = happyReduce_39

action_119 _ = happyReduce_36

action_120 _ = happyReduce_32

action_121 _ = happyReduce_33

action_122 (34) = happyShift action_130
action_122 (38) = happyShift action_131
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (33) = happyShift action_32
action_123 (41) = happyShift action_33
action_123 (44) = happyShift action_34
action_123 (16) = happyGoto action_67
action_123 (20) = happyGoto action_129
action_123 _ = happyFail (happyExpListPerState 123)

action_124 (51) = happyShift action_65
action_124 _ = happyReduce_53

action_125 (51) = happyShift action_65
action_125 _ = happyReduce_40

action_126 (51) = happyShift action_65
action_126 _ = happyReduce_41

action_127 (33) = happyShift action_32
action_127 (41) = happyShift action_33
action_127 (44) = happyShift action_34
action_127 (16) = happyGoto action_128
action_127 _ = happyFail (happyExpListPerState 127)

action_128 _ = happyReduce_65

action_129 (22) = happyShift action_127
action_129 _ = happyReduce_11

action_130 _ = happyReduce_35

action_131 _ = happyReduce_31

action_132 (30) = happyShift action_15
action_132 (31) = happyShift action_16
action_132 (33) = happyShift action_17
action_132 (37) = happyShift action_19
action_132 (41) = happyShift action_20
action_132 (42) = happyShift action_21
action_132 (43) = happyShift action_22
action_132 (44) = happyShift action_23
action_132 (45) = happyShift action_24
action_132 (46) = happyShift action_25
action_132 (47) = happyShift action_26
action_132 (48) = happyShift action_27
action_132 (49) = happyShift action_28
action_132 (6) = happyGoto action_112
action_132 (7) = happyGoto action_13
action_132 (11) = happyGoto action_147
action_132 (14) = happyGoto action_14
action_132 _ = happyFail (happyExpListPerState 132)

action_133 _ = happyReduce_23

action_134 (30) = happyShift action_15
action_134 (31) = happyShift action_16
action_134 (33) = happyShift action_17
action_134 (37) = happyShift action_19
action_134 (41) = happyShift action_20
action_134 (42) = happyShift action_21
action_134 (43) = happyShift action_22
action_134 (44) = happyShift action_23
action_134 (45) = happyShift action_24
action_134 (46) = happyShift action_25
action_134 (47) = happyShift action_26
action_134 (48) = happyShift action_27
action_134 (49) = happyShift action_28
action_134 (6) = happyGoto action_146
action_134 (7) = happyGoto action_13
action_134 (14) = happyGoto action_14
action_134 _ = happyFail (happyExpListPerState 134)

action_135 _ = happyReduce_28

action_136 (30) = happyShift action_15
action_136 (31) = happyShift action_16
action_136 (33) = happyShift action_17
action_136 (37) = happyShift action_19
action_136 (41) = happyShift action_20
action_136 (42) = happyShift action_21
action_136 (43) = happyShift action_22
action_136 (44) = happyShift action_23
action_136 (45) = happyShift action_24
action_136 (46) = happyShift action_25
action_136 (47) = happyShift action_26
action_136 (48) = happyShift action_27
action_136 (49) = happyShift action_28
action_136 (6) = happyGoto action_59
action_136 (7) = happyGoto action_13
action_136 (14) = happyGoto action_14
action_136 (15) = happyGoto action_145
action_136 _ = happyFail (happyExpListPerState 136)

action_137 (51) = happyShift action_65
action_137 _ = happyReduce_47

action_138 (30) = happyShift action_15
action_138 (31) = happyShift action_16
action_138 (33) = happyShift action_17
action_138 (37) = happyShift action_19
action_138 (41) = happyShift action_20
action_138 (42) = happyShift action_21
action_138 (43) = happyShift action_22
action_138 (44) = happyShift action_23
action_138 (45) = happyShift action_24
action_138 (46) = happyShift action_25
action_138 (47) = happyShift action_26
action_138 (48) = happyShift action_27
action_138 (49) = happyShift action_28
action_138 (6) = happyGoto action_59
action_138 (7) = happyGoto action_13
action_138 (14) = happyGoto action_14
action_138 (15) = happyGoto action_144
action_138 _ = happyFail (happyExpListPerState 138)

action_139 _ = happyReduce_46

action_140 _ = happyReduce_63

action_141 (27) = happyShift action_98
action_141 (36) = happyShift action_143
action_141 _ = happyFail (happyExpListPerState 141)

action_142 _ = happyReduce_61

action_143 _ = happyReduce_4

action_144 (27) = happyShift action_73
action_144 (36) = happyShift action_149
action_144 _ = happyFail (happyExpListPerState 144)

action_145 (27) = happyShift action_73
action_145 (36) = happyShift action_148
action_145 _ = happyFail (happyExpListPerState 145)

action_146 (51) = happyShift action_65
action_146 _ = happyReduce_44

action_147 _ = happyReduce_43

action_148 _ = happyReduce_30

action_149 _ = happyReduce_48

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
	(HappyAbsSyn17  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenType  _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TypeStm happy_var_1 []   (reverse happy_var_4)
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 8 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn17  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenType  _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TypeStm happy_var_1 [happy_var_3] (reverse happy_var_7)
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_3  5 happyReduction_5
happyReduction_5 (HappyAbsSyn20  happy_var_3)
	_
	(HappyTerminal (TokenIdent _ happy_var_1))
	 =  HappyAbsSyn5
		 (SignStm       happy_var_1 (reverse happy_var_3)
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happyReduce 6 5 happyReduction_6
happyReduction_6 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncStm       happy_var_1 (reverse happy_var_5) [happy_var_3]
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 6 5 happyReduction_7
happyReduction_7 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn21  happy_var_3) `HappyStk`
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
happyReduction_9 ((HappyAbsSyn20  happy_var_5) `HappyStk`
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
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncStm  happy_var_1      (reverse happy_var_4)  []
	) `HappyStk` happyRest

happyReduce_11 = happyReduce 7 5 happyReduction_11
happyReduction_11 ((HappyAbsSyn20  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncStm  happy_var_1      (reverse happy_var_4)  (reverse happy_var_7)
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_3  6 happyReduction_12
happyReduction_12 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  6 happyReduction_13
happyReduction_13 _
	_
	 =  HappyAbsSyn6
		 (VoidExp
	)

happyReduce_14 = happySpecReduce_3  6 happyReduction_14
happyReduction_14 (HappyAbsSyn6  happy_var_3)
	(HappyTerminal (BinOp _ happy_var_2))
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (OpExp  happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

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
		 (LambdaExp happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  6 happyReduction_18
happyReduction_18 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn6
		 (ConstExp     happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happyReduce 4 6 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (CallExp   happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 4 6 happyReduction_20
happyReduction_20 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenMacroCall _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (MacroExp  happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_21 = happySpecReduce_1  6 happyReduction_21
happyReduction_21 (HappyTerminal (TokenType  _ happy_var_1))
	 =  HappyAbsSyn6
		 (TypeCon   happy_var_1 []
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happyReduce 4 6 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenType  _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TypeCon   happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_23 = happyReduce 5 6 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (CaseExp   happy_var_2 (reverse happy_var_4)
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_1  6 happyReduction_24
happyReduction_24 (HappyTerminal (TokenHole  _ happy_var_1))
	 =  HappyAbsSyn6
		 (HoleExp      happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  6 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (ListExp (reverse happy_var_2)
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  6 happyReduction_26
happyReduction_26 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  6 happyReduction_27
happyReduction_27 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (TupleExp (reverse happy_var_2)
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happyReduce 5 6 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (IfExp   happy_var_2 (reverse happy_var_4)
	) `HappyStk` happyRest

happyReduce_29 = happyReduce 4 6 happyReduction_29
happyReduction_29 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ElseExp    (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 7 6 happyReduction_30
happyReduction_30 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ForExp happy_var_2 happy_var_4 (reverse happy_var_6)
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 5 7 happyReduction_31
happyReduction_31 (_ `HappyStk`
	(HappyTerminal (TokenInt   _ happy_var_4)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt   _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (RangeExp (Bound happy_var_2) (Bound happy_var_4)     1
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 4 7 happyReduction_32
happyReduction_32 (_ `HappyStk`
	(HappyTerminal (TokenInt   _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (RangeExp (Bound  0) (Bound happy_var_3)     1
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 4 7 happyReduction_33
happyReduction_33 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt   _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (RangeExp (Bound happy_var_2)  Inf           2
	) `HappyStk` happyRest

happyReduce_34 = happySpecReduce_3  7 happyReduction_34
happyReduction_34 _
	_
	_
	 =  HappyAbsSyn7
		 (RangeExp  NInf       Inf           1
	)

happyReduce_35 = happyReduce 5 7 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyTerminal (TokenInt   _ happy_var_4)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt   _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (RangeExp (Bound happy_var_2) (Bound (happy_var_4-1)) 1
	) `HappyStk` happyRest

happyReduce_36 = happyReduce 4 7 happyReduction_36
happyReduction_36 (_ `HappyStk`
	(HappyTerminal (TokenInt   _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (RangeExp (Bound  0) (Bound (happy_var_3-1)) 1
	) `HappyStk` happyRest

happyReduce_37 = happySpecReduce_0  8 happyReduction_37
happyReduction_37  =  HappyAbsSyn8
		 ([    ]
	)

happyReduce_38 = happySpecReduce_1  8 happyReduction_38
happyReduction_38 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn8
		 ([ happy_var_1 ]
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  8 happyReduction_39
happyReduction_39 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_3 : happy_var_1
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  9 happyReduction_40
happyReduction_40 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn9
		 ([happy_var_1, happy_var_3]
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  9 happyReduction_41
happyReduction_41 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_3 : happy_var_1
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  10 happyReduction_42
happyReduction_42 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 ([ happy_var_1 ]
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  10 happyReduction_43
happyReduction_43 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_3 : happy_var_1
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  11 happyReduction_44
happyReduction_44 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn11
		 ((happy_var_1 , happy_var_3)
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  12 happyReduction_45
happyReduction_45 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 ([ happy_var_1 ]
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  12 happyReduction_46
happyReduction_46 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_3 : happy_var_1
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  13 happyReduction_47
happyReduction_47 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn13
		 ((reverse happy_var_1 ,        [happy_var_3])
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happyReduce 5 13 happyReduction_48
happyReduction_48 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 ((reverse happy_var_1 , reverse happy_var_4 )
	) `HappyStk` happyRest

happyReduce_49 = happySpecReduce_1  14 happyReduction_49
happyReduction_49 (HappyTerminal (TokenInt   _ happy_var_1))
	 =  HappyAbsSyn14
		 (Int32 happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  14 happyReduction_50
happyReduction_50 (HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn14
		 (Str   happy_var_1
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  14 happyReduction_51
happyReduction_51 (HappyTerminal (TokenChar   _ happy_var_1))
	 =  HappyAbsSyn14
		 (Chr   happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  15 happyReduction_52
happyReduction_52 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn15
		 ([ happy_var_1 ]
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_3  15 happyReduction_53
happyReduction_53 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_3 : happy_var_1
	)
happyReduction_53 _ _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  16 happyReduction_54
happyReduction_54 (HappyTerminal (TokenType  _ happy_var_1))
	 =  HappyAbsSyn16
		 (TypeN happy_var_1 []
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happyReduce 4 16 happyReduction_55
happyReduction_55 (_ `HappyStk`
	(HappyAbsSyn19  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenType  _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (TypeN happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_56 = happySpecReduce_2  16 happyReduction_56
happyReduction_56 _
	_
	 =  HappyAbsSyn16
		 (VoidType
	)

happyReduce_57 = happySpecReduce_1  16 happyReduction_57
happyReduction_57 (HappyTerminal (TokenIdent _ happy_var_1))
	 =  HappyAbsSyn16
		 (TypeVar happy_var_1
	)
happyReduction_57 _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  17 happyReduction_58
happyReduction_58 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 ([ happy_var_1 ]
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  17 happyReduction_59
happyReduction_59 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_3 : happy_var_1
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_1  18 happyReduction_60
happyReduction_60 (HappyTerminal (TokenType  _ happy_var_1))
	 =  HappyAbsSyn18
		 ((happy_var_1, [])
	)
happyReduction_60 _  = notHappyAtAll 

happyReduce_61 = happyReduce 4 18 happyReduction_61
happyReduction_61 (_ `HappyStk`
	(HappyAbsSyn19  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenType  _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 ((happy_var_1, reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_62 = happySpecReduce_1  19 happyReduction_62
happyReduction_62 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn19
		 ([ happy_var_1 ]
	)
happyReduction_62 _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_3  19 happyReduction_63
happyReduction_63 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_3 : happy_var_1
	)
happyReduction_63 _ _ _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_1  20 happyReduction_64
happyReduction_64 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn20
		 ([ happy_var_1 ]
	)
happyReduction_64 _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_3  20 happyReduction_65
happyReduction_65 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_3 : happy_var_1
	)
happyReduction_65 _ _ _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_3  21 happyReduction_66
happyReduction_66 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn21
		 (happy_var_3 : happy_var_1
	)
happyReduction_66 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 52 52 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenArrow       _ -> cont 22;
	TokenDoubleArrow _ -> cont 23;
	TokenLeftArrow   _ -> cont 24;
	TokenData        _ -> cont 25;
	TokenTypeSign    _ -> cont 26;
	TokenSemi        _ -> cont 27;
	TokenComma       _ -> cont 28;
	TokenDot         _ -> cont 29;
	TokenString _ happy_dollar_dollar -> cont 30;
	TokenChar   _ happy_dollar_dollar -> cont 31;
	TokenAssign      _ -> cont 32;
	TokenLParen      _ -> cont 33;
	TokenRParen      _ -> cont 34;
	TokenLBracket    _ -> cont 35;
	TokenRBracket    _ -> cont 36;
	TokenLList       _ -> cont 37;
	TokenRList       _ -> cont 38;
	BinOp _ "<" -> cont 39;
	BinOp _ ">" -> cont 40;
	TokenIdent _ happy_dollar_dollar -> cont 41;
	TokenMacroCall _ happy_dollar_dollar -> cont 42;
	TokenInt   _ happy_dollar_dollar -> cont 43;
	TokenType  _ happy_dollar_dollar -> cont 44;
	TokenHole  _ happy_dollar_dollar -> cont 45;
	Builtin _ "case" -> cont 46;
	Builtin _ "if" -> cont 47;
	Builtin _ "else" -> cont 48;
	Builtin _ "for" -> cont 49;
	Builtin _ "in" -> cont 50;
	BinOp _ happy_dollar_dollar -> cont 51;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 52 tk tks = happyError' (tks, explist)
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

data Range = Bound Int | Inf | NInf deriving Show

data Types = VoidType
           | TypeN String [ Types ]
           | TypeVar String
           deriving Show

data Exp = VoidExp
         | MacroExp  Name [ Exp ]
         | VarExp    Name
         | LambdaExp Name Exp
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
