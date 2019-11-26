library(car)  ###For linear regression diagnostics
library(lmtest)
library(caret) ##Box-Cox Transformation
library(e1071)
library(MASS) ##boxcox function

setwd("D:/Shang Chen")

data <- read.csv("dataaa.csv")

y <- data$myy
caret::BoxCoxTrans(y) ##Determine the optimum lambda for Box-Cox Transformation

y_boxcox <- (y^(-0.7)-1)/(-0.7)

lm_fit <- lm(formula = y_boxcox ~ cluster4 + cluster5 + cluster8 + cluster12 + cluster32 + cluster36 + cluster37 + cluster42 + cluster58, data=data)

##Read files from Mac system
data <- read.csv("/Users/henryluan/Dropbox/2019 Applicants - First cut.csv") ##!!important
