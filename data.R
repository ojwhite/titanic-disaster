### Data

#setwd("C:/Users/Owen/Documents/Interests/Programming/Data Science/Kaggle/Titanic")
setwd("C:/Users/Owen/Documents/Kaggle/titanic-disaster") # home

## Read In
train <- read.csv("data/train.csv")
test <- read.csv("data/test.csv")

## Forks
train1 <- train

## Overview
#str(train)
#summary(train)
#dim(train)

## New Fields
# Title
pttn <- regexpr("[A-Za-z]+\\.", train$Name, perl=TRUE)
train1$Title <- factor(regmatches(train$Name, pttn))