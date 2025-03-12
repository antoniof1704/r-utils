#' This will give us the mode of both a character or numeric variables. It also
#' enables us to exclude NA values or keep them.
#' 
#' Author: Antonio Fratamico


get_mode <- function(x, exclude_na = TRUE) {
  
  if (exclude_na == TRUE) {
    
    x <- na.omit(x)  # Remove NA values
    
    uniq_x <- unique(x)
    uniq_x[which.max(tabulate(match(x, uniq_x)))]
  }
  
  else {
    
    uniq_x <- unique(x)
    uniq_x[which.max(tabulate(match(x, uniq_x)))]
  }

}
