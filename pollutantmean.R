## compute the pollutant mean from specified monitors from the spec data collected

pollutantmean <- function(directory, pollutant, id = 1:332){
    
    ## pollutant = {nitrate, sulfate}
    ## directory = path of directory containing the files
    ## id = monitor name or file name in the directory
   
    ## Define actual file path
    directory <- paste(directory, "/", sep = "")
    dir <- paste(directory, formatC(id, width = 3, flag = "0"), ".csv", sep = "")
    
    vect <- NULL
    
    ## loop to extract values and compute the required mean
    for(i in 1:length(id)){
        
        dummy <- na.omit(read.csv(dir[i]))
        vect <- c(vect, dummy[[pollutant]])
        
    }
    
    ## Return value
    mean(vect)
    
}
