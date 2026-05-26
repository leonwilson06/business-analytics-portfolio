##################################
#Question 1 - Understand the Data
##################################

#reading the text file and saving as matrix
raw.data <- as.matrix(read.table("RedWine.txt"))

# using student ID number for reproducible sampling with the seed function
set.seed(223968166)
subset.data <- raw.data[sample(1:1599, 500), c(1:6)]


#assigning column names
colnames(subset.data) <- c("X1", "X2", "X3", "X4", "X5", "Y")


# Generating scatter plots for each variable against variable of interest Y
plot(subset.data[, "X1"], subset.data[, "Y"], pch = 19, col = "green", 
     main = "Citric Acid vs Wine Quality", 
     xlab = "Citric Acid", ylab = "Quality")


plot(subset.data[, "X2"], subset.data[, "Y"], pch = 20, col = "blue", 
     main = "chlorides vs Wine Quality", 
     xlab = "chlorides", ylab = "Quality")


plot(subset.data[, "X3"], subset.data[, "Y"], pch = 17, col = "red", 
     main = "total sulfur dioxide vs Wine Quality", 
     xlab = "total sulfur dioxide", ylab = "Quality")


plot(subset.data[, "X4"], subset.data[, "Y"], pch = 18, col = "yellow", 
     main = "pH vs Wine Quality", 
     xlab = "pH", ylab = "Quality")


plot(subset.data[, "X5"], subset.data[, "Y"], pch = 16, col = "orange", 
     main = "alcohol vs Wine Quality", 
     xlab = "alcohol", ylab = "Quality")



# Generating histograms for each variable in subset.data
hist(subset.data[, "X1"], main="Histogram of citric acid",
     xlab="X1",col="green")

hist(subset.data[, "X2"], main="Histogram of chlorides",
     xlab="X2",col = "blue")

hist(subset.data[, "X3"], main="Histogram of total sulfur dioxide", 
     xlab="X3",col = "red")

hist(subset.data[, "X4"], main="Histogram of pH", 
     xlab="X4",col = "yellow")

hist(subset.data[, "X5"], main="Histogram of alcohol", 
     xlab="X5",col = "orange")

hist(subset.data[, "Y"], main="Histogram of quality",
     xlab="Y",col="pink")


################################
#Question 2 - Transforming the Data
################################

#importing e1071 package to use skewness function
library(e1071)

# Saving the values from subset.data to T_data excluding variable X2 
T_data <- subset.data[, c(1,3,4,5,6)] 

#Polynomial transformation and scaling of X1
T_data[,1]<-(T_data[,1])^0.8
skewnesst1<-skewness(T_data[,1])
T_data[,1]<-(T_data[,1]-min(T_data[,1]))/(max(T_data[,1])-min(T_data[,1]))
hist(T_data[, 1], main="Histogram of transformed X1",col="green")

#log transformation and scaling of X3
T_data[,2]<-log(T_data[,2])
skewnesst1<-skewness(T_data[,2])
T_data[,2]<-(T_data[,2]-min(T_data[,2]))/(max(T_data[,2])-min(T_data[,2]))
hist(T_data[, 2], main="Histogram of transformed X3",col = "red")

#Scaling of X4
T_data[,3]<-log(T_data[,3])
skewnesst1<-skewness(T_data[,3])
T_data[,3]<-(T_data[,3]-min(T_data[,3]))/(max(T_data[,3])-min(T_data[,3]))
hist(T_data[, 3], main="Histogram of transformed X4",col = "yellow")

#Log transformation and scaling of X5
c_value<-6
T_data[,4]<-1/(T_data[,4]- c_value)
skewnesst1<-skewness(T_data[,4])
T_data[,4]<-(T_data[,4]-min(T_data[,4]))/(max(T_data[,4])-min(T_data[,4]))
hist(T_data[, 4], main="Histogram of Transformed X5",col = "orange")

# scaling of Y
skewnesst1<-skewness(T_data[,5])
T_data[,5]<-(T_data[,5]-min(T_data[,5]))/(max(T_data[,5])-min(T_data[,5]))
hist(T_data[, 5], main="Histogram of transformed Y",col="pink")


write.table(T_data,"Ashbin.txt")

##########################################
#Question 3 - Building models and investigate
##########################################

#using "AggwaFit718.R" to load functions
source("AggWaFit718.R")
T_data.copy <- as.matrix(read.table("Ashbin.txt"))

#Weighted Average Mean(p=1)
fit.QAM(T_data.copy,"out_WAM.txt","stats_WAM.txt",g=AM,g.inv=invAM)

#Weighted Power Mean(p=0.5)
fit.QAM(T_data.copy,"out_WPM05.txt","stats_WPM05.txt",g=PM05,g.inv=invPM05)

#Weighted Power Mean(p=2)
fit.QAM(T_data.copy,"out_WPM2.txt","stats_WPM2.txt",g=QM,g.inv=invQM)

#Ordered Weighted Mean
fit.OWA(T_data.copy,"out_OWA.txt","stats_OWA.txt")



#######################################
#Question 4 - Using Model for Prediction
#######################################


# Capturing new variables for prediction
new_input <- c(0.9, 0.65, 38, 2.53, 7.1)

# Indices of variables to select
indices <- c(1, 3, 4, 5)

# Creating new matrix with selected variables
N.matrix <- matrix(new_input[indices], nrow = 1)

#transforming each variable and scaling respectiveley to Question 2
N.matrix[1]<-N.matrix[1]^0.8
N.matrix[1]<-(N.matrix[1]-0)/(1-0)

N.matrix[2]<-log(N.matrix[2])
N.matrix[2]<-(N.matrix[2]-2.079)/(5.105-2.079)

N.matrix[3]<-log(N.matrix[3])
N.matrix[3]<-(N.matrix[3]-1.007)/(1.388-1.007)

N.matrix[4]<-1/(N.matrix[4]-6)
N.matrix[4]<-(N.matrix[4]-0.125)/(0.4-0.125)


#Using WPM(p=2)

# Loading the WPM(p=2) weights obtained from Question 3
Y_value<-QAM(c(0.919,0.515,-0.206,2.85124),c(0.508, 0.007,0.483,0),QM,invQM)

#reverting to the original scale
Predicted_Quality<-(Y_value*(8-3)+3)

#Rounded to the integer
print(round(Predicted_Quality))

################################################################################

# data set used : [1]P. Cortez, A. Cerdeira, F. Almeida, T. Matos and J. Reis. 
#Modeling wine preferences by data miningfrom physicochemical properties. 
#In Decision Support Systems, Elsevier, 47(4):547-553, 2009

#packages installed : e1071,lpSolve
# functions imported from : AggWaFit718.R

################################################################################