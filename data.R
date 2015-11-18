### Data


## Setup

#setwd("C:/Users/Owen/Documents/Interests/Programming/Data Science/Kaggle/Titanic")
setwd("C:/Users/Owen/Documents/Kaggle/titanic-disaster") # home

# Data - Read In
train <- read.csv("data/train.csv")
test <- read.csv("data/test.csv")

# Data - New Variables
# ...


## Explore

#str(train)

# New field - Title
y <- grep("[A-Za-z]+\\.", train$Name, value=TRUE)
y <- grep("\\.", train$Name, value=TRUE, perl=TRUE)
y <- grep("Rice", train$Name, value=TRUE)

pttn <- regexpr("[A-Za-z]+\\.", train$Name, perl=TRUE)

z <- regmatches(train$Name, pttn)