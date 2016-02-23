pollutantmean <- function(directory, pollutant, id = 1:332){
  list_of_files <- list.files(directory,full.names = TRUE)
  dat <- data.frame()
  for (i in id){
    dat <- rbind(dat, read.csv(list_of_files[i]))
  }
  mean(dat[,pollutant],na.rm=TRUE)
}