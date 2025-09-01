###############################################################################
# SGPE ECNM11049 - ATSE
# Lab No. 0 - R Introduction
# Ping Wu (ping.wu@strath.ac.uk)
###############################################################################

###############################################################################
###-------------- Part I: Working Directory and Workspace ------------------### 
###############################################################################

# Get current working directory location
getwd()
# Create a new folder for the current project
dir.create("Lab1test")
# Change the current working directory
setwd("Lab1test")
# Create two subfolders in our working directory for code and data
dir.create("code")
dir.create("data")
# Relative path example
setwd("./code")
getwd()
# Move back in the folder above
setwd("..")
getwd()
# Create a simple scalar object
a <- 5
# Save the workspace to the file .RData in the cwd (current working directory)
save.image()
# Specify a certain name for the .RData file
save.image(file="dummy.RData")
# Load a workspace into the current session
load("dummy.RData")
# Save specific objects (not the whole workspace) to a file
save(a,file="myfile.RData")
# Load a workspace into the current session
load("myfile.RData")
# Remove specific elements from the environment
rm(a)
# Remove all objects from the environment
rm(list=ls())


###############################################################################
###----------------------------- Part II: Packages -------------------------### 
###############################################################################

# Get library location
.libPaths() 
# See all packages installed
library()   
# See packages currently loaded
search() 
# See whether a specific package (e.g., "dplyr") is already installed 
("dplyr" %in% installed.packages())

# If a specific package (e.g., "dplyr") is already installed, load the package
if("dplyr" %in% installed.packages()){ 
  library(dplyr) 

# Otherwise install and then load the package
}else{ 
  install.packages("dplyr")  # install the package dplyr (install only if necessary)
  library(dplyr)
}


###############################################################################
###--------------------------- Part III: Basic Commands --------------------### 
###############################################################################

# You can use R as a calculator
3 + 3         #addition; code works regardless of the spaces, but it is recommended to use them
3 - 5         #subtraction
3 * 5         #multiplication
3 / 5         #division

3 ^ 5         #exponentiation
sqrt(81)      #square root
243 ^ (1/5)   #a-th root
sin(pi/2)     #sine
cos(0)        #cosine
tan(0)        #tangent
log(1)        #natural logarithm
exp(1)        #e^x

ceiling(1.2)  #next higher integer
floor(1.2)    #next lower integer
abs(-1)       #absolute value
round(2.45,1) #rounds given number of digits

# Some useful R functions
x <- seq(1:10)  # sequentially generate from 1 to 10 (1,2,3,...,10)

mean(x)	        # arithmetic mean
sd(x)	          # standard deviation
var(x)          # variance
median(x)	      # median
quantile(x)	    # quantiles (quantiles on default: min, 25%, median, 75%, max)
range(x)	      # range
sum(x)	        # sum
min(x)	        # minimum
max(x)	        # maximum

###############################################################################
###------------------------- Part IV: Vector and Matrix --------------------### 
###############################################################################

# Create a vector or matrix
a <- c(1,2,5.3,6,-2,4)              # numeric vector
b <- matrix(1:20, nrow=5,ncol=4)    # generates 5 x 4 numeric matrix (from 1 to 20)

# Identify rows, columns or elements using subscripts
a[c(2,4)]   # 2nd and 4th elements of vector
b[,4]       # 4th column of matrix
b[3,]       # 3rd row of matrix 
b[4,2]      # element in the 4th row and 2nd column
b[2:4,1:3]  # rows 2,3,4 of columns 1,2,3

# Matrix addition
c <- matrix(51:70, nrow=5,ncol=4)    # generates 5 x 4 numeric matrix (from 51 to 70)
e <- b + c

