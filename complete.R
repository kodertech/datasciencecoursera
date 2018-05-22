## Function to return number of complete cases in each file (monitor)

complete <- function(directory, id = 1:332){
    
    ## Extracting file names
    
    directory <- paste(directory, "/", sep = "")
    dir <- paste(directory, formatC(id, width = 3, flag = "0"), ".csv", sep = "")
    
    ## Constructing data frame
    
    counter <- 1
    data <- data.frame(NULL, NULL)
    for(i in id){
        temp <- na.omit(read.csv(dir[counter]))
        len <- length(temp$Date)
        d_frame <- data.frame(ID = i, Nobs = len)
        data <- rbind(data, d_frame)
        counter <- counter + 1
    }
    
    data
}