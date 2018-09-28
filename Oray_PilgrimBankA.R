#Pilgrim Bank (A)

library(ggplot2)
library(dplyr)
library(readxl)

#Prepare

bank <- read_excel("~/Desktop/BUS-256/MarketingAnalytics/608715-XLS-ENG.xls", sheet = 2)

#1. Describe objectives

#2a. Columns and rows

nrow(bank) #31364 rows
ncol(bank) #11 columns

#b.Select 1999 columns

bank.df <- bank[-c(8:9, 11)] 

#3a. Summary

summary(bank.df)

#b. NA values, calculate means of Age and Income columns, fill for NA values

na_values <- is.na(bank.df)

bank.df$X9Age <- ifelse(is.na(bank.df$X9Age), mean(bank.df$X9Age, na.rm=TRUE), bank.df$X9Age)
bank.df$X9Inc <- ifelse(is.na(bank.df$X9Inc), mean(bank.df$X9Inc, na.rm=TRUE), bank.df$X9Inc)

#c. Data type conversion, change Age and Income to integer from numeric

bank.df$X9Age <- as.integer(bank.df$X9Age)
bank.df$X9Inc <- as.integer(bank.df$X9Inc)

