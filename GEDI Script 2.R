#------------------------
# Set library 
#------------------------

library(rGEDI)
library(leaflet)
library(sp)
library(rgdal)

#-------------------------
# Assign working Directory 
#-------------------------

MyDir <- "E:/Documents/GEDI Diss/TW_GEDI/GEDIL01_Large/Extracted"

# Set working directory 
setwd(MyDir)

# Assign a out directory
outdir <- MyDir

#------------------------
# Read Data
#------------------------
processed_GEDI02_B_2019190230212_O03247_03_T01787_02_003_01_V002.h5
# Level1B ##############
gedilevel1b_1 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2019164004315_O02829_02_T00802_02_005_01_V002.h5")) #1X
gedilevel2b_1 <- readLevel2A(level2Apath = file.path(outdir, "           .h5 "))


gedilevel1b_2 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2019190230212_O03247_03_T01787_02_005_01_V002.h5")) #2XM
gedilevel2a_2 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2019190230212_O03247_03_T01787_02_003_01_V002.h5 "))          #2XM
gedilevel2b_2 <- readLevel2B(level2Bpath = file.path(outdir, "processed_GEDI02_B_2019190230212_O03247_03_T01787_02_003_01_V002.h5")) #2XM

gedilevel1b_3 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2019229223630_O03852_02_T02072_02_005_01_V002.h5")) #3X BM
gedilevel2b_3 <- readLevel2A(level2Apath = file.path(outdir, "          GEDI02_A_2019229223630_O03852_02_T02072_02_003_01_V002.h5")) #3X BM

gedilevel1b_4 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2019253220436_O04224_03_T00364_02_005_01_V002.h5")) #4X BM
gedilevel2b_4 <- readLevel2A(level2Apath = file.path(outdir, "          GEDI02_A_2019253220436_O04224_03_T00364_02_003_01_V002.h5")) #4X BM


gedilevel1b_5 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2019275043907_O04554_02_T02378_02_005_01_V002.h5")) #5X B
gedilevel2b_5 <- readLevel2A(level2Apath = file.path(outdir, "          .h5"))


gedilevel1b_6 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2019276130838_O04575_03_T02904_02_005_01_V002.h5")) #6X BM
gedilevel2b_6 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2019276130838_O04575_03_T02904_02_003_01_V002.h5")) #6X BM

gedilevel1b_7 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2019297194238_O04905_02_T00649_02_005_01_V002.h5")) #7X M
gedilevel2a_7 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2019297194238_O04905_02_T00649_02_003_01_V002.h5")) #7X M
gedilevel2b_7 <- readLevel2B(level2Apath = file.path(outdir, "processed_GEDI02_B_2019297194238_O04905_02_T00649_02_003_01_V002.h5"))#2XM

gedilevel1b_8 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2019324091022_O05317_02_T03648_02_005_01_V002.h5")) #8X M
gedilevel2a_8 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2019324091022_O05317_02_T03648_02_003_01_V002.h5")) #8X M
gedilevel2b_8 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_9 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2019350223917_O05729_02_T05071_02_005_01_V002.h5")) #9X M
gedilevel2a_9 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2019350223917_O05729_02_T05071_02_003_01_V002.h5")) #9X M

gedilevel1b_10 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020043234346_O06629_02_T04918_02_005_01_V002.h5")) #10X M
gedilevel2a_10 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2020043234346_O06629_02_T04918_02_003_01_V002.h5")) #10X M
gedilevel2b_10 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_11 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020051203635_O06751_02_T03342_02_005_01_V002.h5")) #11X M
gedilevel2a_11 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2020051203635_O06751_02_T03342_02_003_01_V002.h5")) #11X M
gedilevel2b_11 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_12 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020055190255_O06812_02_T02072_02_005_01_V002.h5")) #12X B
gedilevel2a_12 <- readLevel2A(level2Apath = file.path(outdir, "          .h5"))                                                       

gedilevel1b_13 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020059172912_O06873_02_T00649_02_005_01_V002.h5")) #13X M
gedilevel2a_13 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2020059172912_O06873_02_T00649_02_003_01_V002.h5")) #13X M
gedilevel2b_13 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_14 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020063155527_O06934_02_T02225_02_005_01_V002.h5")) #14X M
gedilevel2a_14 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2020063155527_O06934_02_T02225_02_003_01_V002.h5")) #14X M
gedilevel2b_14 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_15 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020071124750_O07056_02_T05071_02_005_01_V002.h5")) #15X
gedilevel2a_15 <- readLevel2A(level2Apath = file.path(outdir, "          .h5"))

gedilevel1b_16 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020083080720_O07239_02_T00802_02_005_01_V002.h5")) #16X
gedilevel2a_16 <- readLevel2A(level2Apath = file.path(outdir, "          .h5"))

gedilevel1b_17 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020087063438_O07300_02_T02225_02_005_01_V002.h5")) #17X
gedilevel2a_17 <- readLevel2A(level2Apath = file.path(outdir, "          .h5"))

gedilevel1b_18 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020067142139_O06995_02_T03495_02_005_01_V002.h5")) #18X
gedilevel2a_18 <- readLevel2A(level2Apath = file.path(outdir, "          GEDI02_A_2020067142139_O06995_02_T03495_02_003_01_V002.h5")) #18X
gedilevel2b_18 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_19 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020091050155_O07361_02_T04918_02_005_01_V002.h5")) #19X
gedilevel2a_19 <- readLevel2A(level2Apath = file.path(outdir, "          .h5"))

gedilevel1b_20 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020142084750_O08154_02_T04918_02_005_01_V002.h5")) #20X M
gedilevel2a_20 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2020142084750_O08154_02_T04918_02_003_01_V002.h5")) #20X M
gedilevel2b_20 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_21 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020155123459_O08358_03_T04480_02_005_01_V002.h5")) #21X
gedilevel2a_21 <- readLevel2A(level2Apath = file.path(outdir, "          .h5")) #20X

gedilevel1b_22 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020159110026_O08419_03_T03210_02_005_01_V002.h5")) #22X B
gedilevel2a_22 <- readLevel2A(level2Apath = file.path(outdir, "          .h5")) #20X

gedilevel1b_23 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020151140927_O08297_03_T01634_02_005_01_V002.h5")) #23X BM
gedilevel2a_23 <- readLevel2A(level2Apath = file.path(outdir, "          GEDI02_A_2020151140927_O08297_03_T01634_02_003_01_V002.h5")) #23X BM

gedilevel1b_24 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020314124126_O10823_02_T10610_02_005_02_V002.h5")) #24X BM
gedilevel2a_24 <- readLevel2A(level2Apath = file.path(outdir, "          GEDI02_A_2020314124126_O10823_02_T10610_02_003_02_V002.h5")) #24X BM

gedilevel1b_25 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020318110711_O10884_02_T10763_02_005_02_V002.h5")) #25X M
gedilevel2a_25 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2020318110711_O10884_02_T10763_02_003_02_V002.h5")) #25X M
gedilevel2b_25 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_26 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020326080058_O11006_02_T07764_02_005_02_V002.h5")) #26X M
gedilevel2a_26 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2020326080058_O11006_02_T07764_02_003_02_V002.h5")) #26X M
gedilevel2b_26 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_27 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020330062749_O11067_02_T09034_02_005_02_V002.h5")) #27X BM
gedilevel2a_27 <- readLevel2A(level2Apath = file.path(outdir, "          GEDI02_A_2020330062749_O11067_02_T09034_02_003_02_V002.h5")) #27X BM

gedilevel1b_28 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020338032106_O11189_02_T09187_02_005_02_V002.h5")) #28X M
gedilevel2a_28 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2020338032106_O11189_02_T09187_02_003_02_V002.h5")) #28X M
gedilevel2b_28 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_29 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020342014734_O11250_02_T09034_02_005_02_V002.h5")) #29X BM
gedilevel2a_29 <- readLevel2A(level2Apath = file.path(outdir, "          GEDI02_A_2020342014734_O11250_02_T09034_02_003_02_V002.h5")) #29X BM

gedilevel1b_30 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020346001358_O11311_02_T07917_02_005_02_V002.h5")) #30X M
gedilevel2a_30 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2020346001358_O11311_02_T07917_02_003_02_V002.h5")) #30X M
gedilevel2b_30 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_31 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020349224018_O11372_02_T06494_02_005_02_V002.h5")) #31X M
gedilevel2a_31 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2020349224018_O11372_02_T06494_02_003_02_V002.h5")) #31X M

gedilevel1b_32 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2020353210638_O11433_02_T09340_02_005_02_V002.h5")) #32X BM
gedilevel2a_32 <- readLevel2A(level2Apath = file.path(outdir, "          GEDI02_A_2020353210638_O11433_02_T09340_02_003_02_V002.h5")) #32X BM

gedilevel1b_33 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2021004232157_O11698_03_T05750_02_005_02_V002.h5")) #33X B
gedilevel2a_33 <- readLevel2A(level2Apath = file.path(outdir, "          .h5")) #33X

gedilevel1b_34 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2021008214804_O11759_03_T03057_02_005_02_V002.h5")) #34X M
gedilevel2a_34 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2021008214804_O11759_03_T03057_02_003_02_V002.h5")) #34X M
gedilevel2b_34 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_35 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2021012201404_O11820_03_T05903_02_005_02_V002.h5")) #35X M
gedilevel2b_35 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2021012201404_O11820_03_T05903_02_003_02_V002.h5")) #35X M

gedilevel1b_36 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2021016184000_O11881_03_T10325_02_005_02_V002.h5")) #36X M
gedilevel2a_36 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2021016184000_O11881_03_T10325_02_003_02_V002.h5")) #36X M
gedilevel2b_36 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_37 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2021020170556_O11942_03_T08902_02_005_02_V002.h5")) #37X B
gedilevel2a_37 <- readLevel2A(level2Apath = file.path(outdir, "          .h5")) #37X

gedilevel1b_38 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2021024153300_O12003_03_T07479_02_005_02_V002.h5")) #38X M
gedilevel2a_38 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2021024153300_O12003_03_T07479_02_003_02_V002.h5")) #38X M
gedilevel2b_38 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_39 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2021028140026_O12064_03_T08749_02_005_02_V002.h5")) #39X M
gedilevel2a_39 <- readLevel2A(level2Apath = file.path(outdir, "          GEDI02_A_2021028140026_O12064_03_T08749_02_003_02_V002.h5")) #39X M
gedilevel2b_39 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_40 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2021036105456_O12186_03_T08596_02_005_02_V002.h5")) #40X B
gedilevel2a_40 <- readLevel2A(level2Apath = file.path(outdir, "          .h5")) #40X B

gedilevel1b_41 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2021042231824_O12287_02_T09340_02_005_02_V002.h5")) #41X BM
gedilevel2a_41 <- readLevel2A(level2Apath = file.path(outdir, "          GEDI02_A_2021042231824_O12287_02_T09340_02_003_02_V002.h5")) #41X BM

gedilevel1b_42 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2021186232316_O14519_03_T02904_02_005_02_V002.h5")) #42X B
gedilevel2a_42 <- readLevel2A(level2Apath = file.path(outdir, "          .h5")) #42X

gedilevel1b_43 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2021050201239_O12409_02_T09187_02_005_02_V002.h5")) #43X M
gedilevel2a_43 <- readLevel2A(level2Apath = file.path(outdir, "          GEDI02_A_2021050201239_O12409_02_T09187_02_003_02_V002.h5")) #43X M
gedilevel2b_43 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_44 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2021058170641_O12531_02_T10610_02_005_02_V002.h5")) #44X B
gedilevel2a_44 <- readLevel2A(level2Apath = file.path(outdir, "          .h5")) #44X

gedilevel1b_45 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2021054183943_O12470_02_T07764_02_005_02_V002.h5")) #45X M
gedilevel2a_45 <- readLevel2A(level2Apath = file.path(outdir, "          GEDI02_A_2021054183943_O12470_02_T07764_02_003_02_V002.h5")) #45X M
gedilevel2b_45 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_46 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2021062153338_O12592_02_T06188_02_005_02_V002.h5")) #46X B
gedilevel2a_46 <- readLevel2A(level2Apath = file.path(outdir, "          .h5")) #46X

gedilevel1b_47 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2021193114742_O14620_02_T07917_02_005_02_V002.h5")) #47X M
gedilevel2a_47 <- readLevel2A(level2Apath = file.path(outdir, "          GEDI02_A_2021193114742_O14620_02_T07917_02_003_02_V002.h5")) #47X M
gedilevel2b_47 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_48 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2021197101526_O14681_02_T06341_02_005_02_V002.h5")) #48X M
gedilevel2a_48 <- readLevel2A(level2Apath = file.path(outdir, "          GEDI02_A_2021197101526_O14681_02_T06341_02_003_02_V002.h5")) #48X M
gedilevel2b_48 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_49 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2021254203114_O15571_03_T06056_02_005_02_V002.h5")) #49X BM
gedilevel2a_49 <- readLevel2A(level2Apath = file.path(outdir, "          GEDI02_A_2021254203114_O15571_03_T06056_02_003_02_V002.h5")) #49X BM

gedilevel1b_50 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2021261085800_O15672_02_T10763_02_005_02_V002.h5")) #50X M
gedilevel2a_50 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2021261085800_O15672_02_T10763_02_003_02_V002.h5")) #50X M
gedilevel2b_50 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_51 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2021326160903_O16684_03_T10172_02_005_02_V002.h5")) #51X M
gedilevel2a_51 <- readLevel2A(level2Apath = file.path(outdir, "          GEDI02_A_2021326160903_O16684_03_T10172_02_003_02_V002.h5")) #51X M
gedilevel2b_51 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_52 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2021333043419_O16785_02_T02378_02_005_02_V002.h5")) #52X B
gedilevel2a_52 <- readLevel2A(level2Apath = file.path(outdir, "          .h5")) #52X

gedilevel1b_53 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2021364160714_O17273_02_T02225_02_005_02_V002.h5")) #53X M
gedilevel2a_53 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2021364160714_O17273_02_T02225_02_003_02_V002.h5")) #53X M
gedilevel2b_53 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

gedilevel1b_54 <- readLevel1B(level1Bpath = file.path(outdir, "processed_GEDI01_B_2022004230105_O17355_03_T08749_02_005_02_V002.h5")) #54X M
gedilevel2a_54 <- readLevel2A(level2Apath = file.path(outdir, "GEDI02_A_2022004230105_O17355_03_T08749_02_003_02_V002.h5")) #54X M
gedilevel2b_54 <- readLevel2B(level2Apath = file.path(outdir, ""))#2XM

# Level2A ####


#----------
# Get elevation
#----------

level1bGeo_1 <- getLevel1BGeo(level1b = gedilevel1b_1, select = c("elevation_bin0"))
level1bGeo_2 <- getLevel2AM(level1b = gedilevel1b_2, select = c("elevation_bin0"))
level1bGeo_34 <- getLevel1BGeo(level1b = gedilevel1b_34, select = c("elevation_bin0"))


# ------------
# Set subset
#------------


xmin =120.66064
ymin =21.88882
xmax =120.92871
ymax =22.1085

min(level1bGeo_1$longitude_bin0)
max(level1bGeo_1$longitude_bin0)
min(level1bGeo_1$latitude_bin0)
max(level1bGeo_1$latitude_bin0)


#--------------
#Adding subset
#-------------

# Level1B #####
level1b_subset_1 <- clipLevel1B(gedilevel1b_1, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_1 <- getLevel1BGeo(level1b = level1b_subset_1, select = c("elevation_bin0"))

level1b_subset_2 <- clipLevel1B(gedilevel1b_2, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_2 <- getLevel1BGeo(level1b = level1b_subset_2, select = c("elevation_bin0"))

level1b_subset_3 <- clipLevel1B(gedilevel1b_3, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_3 <- getLevel1BGeo(level1b = level1b_subset_3, select = c("elevation_bin0"))


level1b_subset_4 <- clipLevel1B(gedilevel1b_4, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_4 <- getLevel1BGeo(level1b = level1b_subset_4, select = c("elevation_bin0"))

level1b_subset_5 <- clipLevel1B(gedilevel1b_5, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_5 <- getLevel1BGeo(level1b = level1b_subset_5, select = c("elevation_bin0"))
level1b_subset_6 <- clipLevel1B(gedilevel1b_6, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_6 <- getLevel1BGeo(level1b = level1b_subset_6, select = c("elevation_bin0"))
level1b_subset_7 <- clipLevel1B(gedilevel1b_7, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_7 <- getLevel1BGeo(level1b = level1b_subset_7, select = c("elevation_bin0"))
level1b_subset_8 <- clipLevel1B(gedilevel1b_8, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_8 <- getLevel1BGeo(level1b = level1b_subset_8, select = c("elevation_bin0"))
level1b_subset_9 <- clipLevel1B(gedilevel1b_9, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_9 <- getLevel1BGeo(level1b = level1b_subset_9, select = c("elevation_bin0"))
level1b_subset_10 <- clipLevel1B(gedilevel1b_10, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_10 <- getLevel1BGeo(level1b = level1b_subset_10, select = c("elevation_bin0"))
#10s
level1b_subset_11 <- clipLevel1B(gedilevel1b_11, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_11 <- getLevel1BGeo(level1b = level1b_subset_11, select = c("elevation_bin0"))
level1b_subset_12 <- clipLevel1B(gedilevel1b_12, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_12 <- getLevel1BGeo(level1b = level1b_subset_12, select = c("elevation_bin0"))
level1b_subset_13 <- clipLevel1B(gedilevel1b_13, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_13 <- getLevel1BGeo(level1b = level1b_subset_13, select = c("elevation_bin0"))
level1b_subset_14 <- clipLevel1B(gedilevel1b_14, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_14 <- getLevel1BGeo(level1b = level1b_subset_14, select = c("elevation_bin0"))
level1b_subset_15 <- clipLevel1B(gedilevel1b_15, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_15 <- getLevel1BGeo(level1b = level1b_subset_15, select = c("elevation_bin0"))
level1b_subset_16 <- clipLevel1B(gedilevel1b_16, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_16 <- getLevel1BGeo(level1b = level1b_subset_16, select = c("elevation_bin0"))
level1b_subset_17 <- clipLevel1B(gedilevel1b_17, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_17 <- getLevel1BGeo(level1b = level1b_subset_17, select = c("elevation_bin0"))
level1b_subset_18 <- clipLevel1B(gedilevel1b_18, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_18 <- getLevel1BGeo(level1b = level1b_subset_18, select = c("elevation_bin0"))
level1b_subset_19 <- clipLevel1B(gedilevel1b_19, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_19 <- getLevel1BGeo(level1b = level1b_subset_19, select = c("elevation_bin0"))
level1b_subset_20 <- clipLevel1B(gedilevel1b_20, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_20 <- getLevel1BGeo(level1b = level1b_subset_20, select = c("elevation_bin0"))
#20s
level1b_subset_21 <- clipLevel1B(gedilevel1b_21, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_21 <- getLevel1BGeo(level1b = level1b_subset_21, select = c("elevation_bin0"))
level1b_subset_22 <- clipLevel1B(gedilevel1b_22, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_22 <- getLevel1BGeo(level1b = level1b_subset_22, select = c("elevation_bin0"))
level1b_subset_23 <- clipLevel1B(gedilevel1b_23, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_23 <- getLevel1BGeo(level1b = level1b_subset_23, select = c("elevation_bin0"))
level1b_subset_24 <- clipLevel1B(gedilevel1b_24, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_24 <- getLevel1BGeo(level1b = level1b_subset_24, select = c("elevation_bin0"))
level1b_subset_25 <- clipLevel1B(gedilevel1b_25, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_25 <- getLevel1BGeo(level1b = level1b_subset_25, select = c("elevation_bin0"))
level1b_subset_26 <- clipLevel1B(gedilevel1b_26, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_26 <- getLevel1BGeo(level1b = level1b_subset_26, select = c("elevation_bin0"))
level1b_subset_27 <- clipLevel1B(gedilevel1b_27, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_27 <- getLevel1BGeo(level1b = level1b_subset_27, select = c("elevation_bin0"))
level1b_subset_28 <- clipLevel1B(gedilevel1b_28, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_28 <- getLevel1BGeo(level1b = level1b_subset_28, select = c("elevation_bin0"))
level1b_subset_29 <- clipLevel1B(gedilevel1b_29, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_29 <- getLevel1BGeo(level1b = level1b_subset_29, select = c("elevation_bin0"))
level1b_subset_30 <- clipLevel1B(gedilevel1b_30, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_30 <- getLevel1BGeo(level1b = level1b_subset_30, select = c("elevation_bin0"))
#30s
level1b_subset_31 <- clipLevel1B(gedilevel1b_31, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_31 <- getLevel1BGeo(level1b = level1b_subset_31, select = c("elevation_bin0"))
level1b_subset_32 <- clipLevel1B(gedilevel1b_32, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_32 <- getLevel1BGeo(level1b = level1b_subset_32, select = c("elevation_bin0"))
level1b_subset_33 <- clipLevel1B(gedilevel1b_33, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_33 <- getLevel1BGeo(level1b = level1b_subset_33, select = c("elevation_bin0"))
level1b_subset_34 <- clipLevel1B(gedilevel1b_34, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_34 <- getLevel1BGeo(level1b = level1b_subset_34, select = c("elevation_bin0"))
level1b_subset_35 <- clipLevel1B(gedilevel1b_35, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_35 <- getLevel1BGeo(level1b = level1b_subset_35, select = c("elevation_bin0"))
level1b_subset_36 <- clipLevel1B(gedilevel1b_36, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_36 <- getLevel1BGeo(level1b = level1b_subset_36, select = c("elevation_bin0"))
level1b_subset_37 <- clipLevel1B(gedilevel1b_37, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_37 <- getLevel1BGeo(level1b = level1b_subset_37, select = c("elevation_bin0"))
level1b_subset_38 <- clipLevel1B(gedilevel1b_38, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_38 <- getLevel1BGeo(level1b = level1b_subset_38, select = c("elevation_bin0"))
level1b_subset_39 <- clipLevel1B(gedilevel1b_39, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_39 <- getLevel1BGeo(level1b = level1b_subset_39, select = c("elevation_bin0"))
level1b_subset_40 <- clipLevel1B(gedilevel1b_40, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_40 <- getLevel1BGeo(level1b = level1b_subset_40, select = c("elevation_bin0"))
#40s
level1b_subset_41 <- clipLevel1B(gedilevel1b_41, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_41 <- getLevel1BGeo(level1b = level1b_subset_41, select = c("elevation_bin0"))
level1b_subset_42 <- clipLevel1B(gedilevel1b_42, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_42 <- getLevel1BGeo(level1b = level1b_subset_42, select = c("elevation_bin0"))
level1b_subset_43 <- clipLevel1B(gedilevel1b_43, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_43 <- getLevel1BGeo(level1b = level1b_subset_43, select = c("elevation_bin0"))
level1b_subset_44 <- clipLevel1B(gedilevel1b_44, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_44 <- getLevel1BGeo(level1b = level1b_subset_44, select = c("elevation_bin0"))
level1b_subset_45 <- clipLevel1B(gedilevel1b_45, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_45 <- getLevel1BGeo(level1b = level1b_subset_45, select = c("elevation_bin0"))
level1b_subset_46 <- clipLevel1B(gedilevel1b_46, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_46 <- getLevel1BGeo(level1b = level1b_subset_46, select = c("elevation_bin0"))
level1b_subset_47 <- clipLevel1B(gedilevel1b_47, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_47 <- getLevel1BGeo(level1b = level1b_subset_47, select = c("elevation_bin0"))
level1b_subset_48 <- clipLevel1B(gedilevel1b_48, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_48 <- getLevel1BGeo(level1b = level1b_subset_48, select = c("elevation_bin0"))
level1b_subset_49 <- clipLevel1B(gedilevel1b_49, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_49 <- getLevel1BGeo(level1b = level1b_subset_49, select = c("elevation_bin0"))
level1b_subset_50 <- clipLevel1B(gedilevel1b_50, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_50 <- getLevel1BGeo(level1b = level1b_subset_50, select = c("elevation_bin0"))
#50s
level1b_subset_51 <- clipLevel1B(gedilevel1b_51, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_51 <- getLevel1BGeo(level1b = level1b_subset_51, select = c("elevation_bin0"))
level1b_subset_52 <- clipLevel1B(gedilevel1b_52, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_52 <- getLevel1BGeo(level1b = level1b_subset_52, select = c("elevation_bin0"))
level1b_subset_53 <- clipLevel1B(gedilevel1b_53, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_53 <- getLevel1BGeo(level1b = level1b_subset_53, select = c("elevation_bin0"))
level1b_subset_54 <- clipLevel1B(gedilevel1b_54, xmin, xmax, ymin, ymax, output = file.path(outdir, ""))
level1bGeo_sub_54 <- getLevel1BGeo(level1b = level1b_subset_54, select = c("elevation_bin0"))




#------------
#  Map
#------------

leaflet() %>%
  addCircleMarkers(level1bGeo_sub_54$longitude_bin0,
                   level1bGeo_sub_54$latitude_bin0,
                   radius = 5,
                   opacity = 1,
                   color = "green") %>%
  addScaleBar(options = list(imperial = FALSE)) %>%
  addProviderTiles(providers$Esri.WorldImagery) %>%
  addLegend(colors = c("green"), labels = c("Sample Area"))


#--------------------------
# Get Gedi Pulse Geolocation
#--------------------------


head(level1bGeo_sub_54)

level1bGeo_sub_54$shot_number<-paste0(level1bGeo_sub_54$shot_number)

level1bGeo_spdf_54<-SpatialPointsDataFrame(cbind(level1bGeo_sub_54$longitude_bin0, level1bGeo_sub_54$latitude_bin0),
                                        data=level1bGeo_sub_54)


raster::shapefile(level1bGeo_spdf_54, paste0(outdir,"\\GEDI01_B_54_sub"))


#-------------------------
# Get GEDI Full-waveform()
#------------------------

wf <- getLevel1BWF(gedilevel1b_34, shot_number= "117590200300432038")

par(mfrow = c(2,1), mar=c(4,4,1,1), cex.axis = 1.5)

plot(wf, relative=FALSE, polygon=TRUE, type="l", lwd=2, col="forestgreen",
     xlab="Waveform Amplitude", ylab="Elevation (m)")
grid()
plot(wf, relative=TRUE, polygon=FALSE, type="l", lwd=2, col="forestgreen",
     xlab="Waveform Amplitude (%)", ylab="Elevation (m)")
grid()

#-------------------------------
# Get GEDI Elevation and Height Metrics
#-------------------------------

level2AM<-getLevel2AM(gedilevel2a_50)
head(level2AM[,c("beam","shot_number","elev_highestreturn","elev_lowestmode","rh100")])


# Converting shot_number as "integer64" to "character"
level2AM$shot_number<-paste0(level2AM$shot_number)

# Converting Elevation and Height Metrics as data.table to SpatialPointsDataFrame
level2AM_spdf<-SpatialPointsDataFrame(cbind(level2AM$lon_lowestmode,level2AM$lat_lowestmode),
                                      data=level2AM)

# Exporting Elevation and Height Metrics as ESRI Shapefile
raster::shapefile(level2AM_spdf,paste0(outdir,"\\GEDI02_A_2019108080338_O01964_T05337_02_001_01_sub"))

#PLot waveform

shot_number = "117590200300432038"

png("117590200300432038_C6A19_34.png", width = 8, height = 6, units = 'in', res = 300)
plotWFMetrics(gedilevel1b_34, gedilevel2b_34, shot_number, rh=c(25, 50, 75, 90))
dev.off()

#Plot Plant Area Index (PAI) and Plant Area Volume Density (PAVD) Profiles
level2BPAIProfile <- getLevel2BPAIProfile(gedilevel2b_2)

#specify GEDI beam
beam="BEAM0101"

# Plot Level2B PAI Profile
gPAIprofile <- plotPAIProfile(level2BPAIProfile, beam=beam, elev=TRUE)


level2BVPM<-getLevel2BVPM(gedilevel2b)
level2BPAIProfile<-getLevel2BPAIProfile(gedilevel2b)















