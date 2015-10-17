
#set working directory
setwd("C:/data_science/R_lang/week_2/")

pollutantmean <- function(directory, pollutant, id)
{
    #prepare a list of data files to be used based on index id
    if(!dir.exists(directory))
    {
        print("ERROR : Directory : ", directory, ", does not exist");
        return;
    }
    #creating list
    file_lst <- list.files(directory)
    abs_path <- paste(directory, file_lst, sep="/")
    
    #create vector to hold data
    mean_vector <- c()
    
    for(x in id)
    {
        file_data <- read.csv(abs_path[x])
        #ignoring NA 
        na_rmd <- file_data[!is.na(file_data[, pollutant]), pollutant]
        mean_vector <- c(mean_vector, na_rmd)
    }
    #get mean value and round it to 3 decimal
    round(mean(mean_vector), 3)
}
