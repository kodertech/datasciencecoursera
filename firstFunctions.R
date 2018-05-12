add2 <- function(x, y){
  x+y
}

above <- function(x, n=10){
  use <- x>n
  x[use]
}

colMeans <- function(x, removeNA = TRUE){
  
  nc <- ncol(y)  ##count the number of columns in the matrix or dataframe
  
  means <- numeric(nc)  ##create a numeric vector of length nc
  
  for(i in 1:nc){
    means[i] <- mean(y[,i], na.rm = removeNA) ##calculatee the mean of all numbers in column 'i' and remove the NAs is stated by the user
  }
  
  means
}