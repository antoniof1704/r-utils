#' This process creates a function to produce log counts for the number of rows and 
#' distinct IDs (that are specified in the data and column arguement of function)

# Author: Antonio Fratamico

log_counts <- function(data, columns = NULL) {
  
  logger::log_info("Number of Rows: {nrow(data)}")
  logger::log_info("Distinct {columns} Count: {n_distinct(data[[columns]])}")
  
  }

return(log_counts)
}
