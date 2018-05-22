## Compute correlation between sulfate and nitrate using data of monitors meeting threshold constraint on collected data

corr <- function(directory, threshold = 0){
    
    # Compute actual directory paths to files
    directory <- paste(directory, "/", sep = "")
    dir <- paste(directory, formatC(1:332, width = 3, flag = "0"), ".csv", sep = "")
    
    # compute correlation between sulfate and nitrate
    corrVect <- numeric(length = 0)
    for(i in 1:332){
        file <- na.omit(read.csv(dir[i]))
        
        if(length(file$Date) > threshold){
            corrVect <- c(corrVect, cor(file$sulfate, file$nitrate))
        }
    }
    
    corrVect
    
}