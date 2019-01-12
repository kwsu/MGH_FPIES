rm(list=ls())

#Libraries
library(tableone)
library(tidyr)
library(dplyr)
library(ggplot2)
library(magrittr)

####Load files####
mrn <- read.csv("C:/Users/moski_000/Dropbox (Partners HealthCare)/Manuscripts/Kuan-wen/FPIES chart review/csv/Mrn.csv", header=TRUE, sep=",")
prv <- read.csv("C:/Users/moski_000/Dropbox (Partners HealthCare)/Manuscripts/Kuan-wen/FPIES chart review/csv/Provider.csv", header=TRUE, sep=",")


####Dermo csv not yet created#####
dermo <- read.csv("C:/Users/ky587/fpies/Dermo.csv", header=TRUE, sep=",")


###################################################################
table(dermo$Gender)
prop.table(table(dermo$Gender))
# Female=379(42.68%), Male=509(57.32%)

quantile(dermo$Age)
# 0%  25%  50%  75%  100%
# 0   3    6    11   83

table(dermo$Race)
prop.table(table(dermo$Race))
# White=703(79.17%), African American= 31+1=32(3.6%), Asian=42(4.73%), Asian@Hispanic=1(0.11%),
# Hispanic White-WHITE@HISPANIC=4(0.45%), Hispanic-OTHER@HISPANIC=12(1.35%), Hispanic-HISPANIC OR LATINO=13(1.46%), Hispanic-HISPANIC=4 (0.45%)
# Hawaiian-other pacific islander= 1(0.11%),
# Multiracial=1(0.11%), Other=17(1.91%), not-recorded-unknown=6(0.68%), Not Recorded-DECLINED=14(1.58%), Not Recorded-@=38 (4.28%)

table(dermo$Language)
prop.table(table(dermo$Language))
# English= 843(94.93%), Spanish 19(2.14%), Portuguese=8(0.90%),
# Arabic=2 (0.22%), Camdodian=1(0.11%)
# Language unavailable=1(0.11%), unknown=5(0.56%), Non recorded=9 (1.01%)

