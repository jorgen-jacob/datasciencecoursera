complete <- function(directory, id = 1:332){
  list_of_files <- list.files(directory,full.names = TRUE)
  dat <- data.frame()
  result <- data.frame()
  for (i in id){
    dat <- read.csv(list_of_files[i])
    dat <- na.omit(dat)
    result <- rbind(result,c(i,nrow(dat)))
  }
  colnames(result) <- c("id","nobs")
  result
}
