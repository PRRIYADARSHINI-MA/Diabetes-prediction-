library(corrplot)
library(caret)
install.packages("mlbench")
library(mlbench)
D<-data(PimaIndiansDiabetes)
pima <- read.csv(file.path("E:", "Diabetes.csv"), col.names=c("Pregnant","Plasma_Glucose","Dias_BP","Triceps_Skin","Serum_Insulin","BMI","DPF","Age","Diabetes"))
head(pima) # visualize the header of Pima data
str(pima) # show the structure of the data
sapply(pima, function(x) sum(is.na(x))) #We use "sapply"" to check the number of missing values in each columns.
#As the results show there are not missing values on the data.
#Let's produce the matrix of scatterplots
pairs(pima, panel = panel.smooth)
#we compute the matrix of correlations between the variables
corrplot(cor(pima[, -9]), type = "lower", method = "number")

