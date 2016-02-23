corr <- function(directory, threshold = 0) {
  list_of_files <- list.files(directory,full.names = TRUE)
  dat <- data.frame()
  result <- data.frame()
  for (i in 1:length(list_of_files)){
    dat <- read.csv(list_of_files[i])
    dat <- na.omit(dat)
    corr_value <- cor(dat[2],dat[3])
    result <- rbind(result,c(i,nrow(dat),corr_value))
  }
  colnames(result) <- c("id","nobs","corr_value")
  result_subset <- result[which(result[, "nobs"] >= threshold),]
  result_vector <- result_subset[,"corr_value"]
}