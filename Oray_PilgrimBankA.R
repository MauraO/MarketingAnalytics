#Pilgrim Bank (A)

library(ggplot2)
library(dplyr)

#Prepare

bank <- read.csv("~/Desktop/BUS-256/PilgrimBankA.csv")

#1. Describe objectives

#2a. Columns and rows

nrow(bank) #31364 rows
ncol(bank) #11 columns

#b.Select 1999 columns

bank.df <- bank[-c(8:9, 11)] 

#3a. Summary

summary(bank.df)

#b. NA values
#c. Data type conversion


