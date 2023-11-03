library(caret)
library(tidyverse)
library(openxlsx)

set.seed(23)
setwd("C:/Users/parm9/OneDrive/Desktop/House price")

Data <- read.xlsx("House Price India.xlsx")

df <- Data %>%
  select(Price, number.of.bedrooms, number.of.bathrooms, living.area, Built.Year)

df %>%
  complete.cases() %>%
  mean()

n <- nrow(df)
train_id <- sample(1:n, size = 0.8*n)
train_df <- df[train_id,]
test_df <- df[-train_id,]

#train model
lm_model <-train(log(Price+1) ~ ., 
                  train_df, 
                  method= "lm")

#predict
predict(lm_model, newdata = test_df)
