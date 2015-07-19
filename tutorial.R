### Tutorial


## Setup

setwd("C:/Users/Owen/Documents/Interests/Programming/Data Science/Kaggle/Titanic")

# Packages
library("rpart") 		     # Decision Trees
library("rpart.plot")    # Decision Trees - Graphs
library("rattle")	       # Machine Learning
library("RColorBrewer")  # Graphs

# Data - Read In
train = read.csv("data/train.csv")
test = read.csv("data/test.csv")

# Data - New Variables
# ...


## Explore

str(train)


## Models

# Decision Tree
dt.1 = rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked, 
             data     = train,
             method   = "class")
fancyRpartPlot(dt.1)