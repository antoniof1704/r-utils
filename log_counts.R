#' This process creates a function to produce log counts for the number of rows and 
#' distinct IDs (that are specified in the data and column arguement of function)

# Author: Antonio Fratamico

log_counts <- function(data, columns = NULL) {
  
  # Check if columns is not NULL before logging distinct count
  logger::log_info("Number of Rows: {nrow(data)}")
  
  if (!is.null(columns)) {
    logger::log_info("Distinct {columns} Count: {n_distinct(data[[columns]])}")
  } else {
    logger::log_info("No specific column provided for distinct count.")
  }
}
  
return(log_counts)
}
