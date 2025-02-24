#' This process creates a function that produces a number of common descriptive statistics when
#' a dataframe is specified, along with specified columns for each of the parameters in the function. 
#' Only data needs to be specified, the rest of the parameters can be left blank if not needed. This 
#' function allows you to specify multiple columns within each parameter (other than data). See example 
#' of how to use it below:

#' log_counts(dataframe1, 
#'           distinct = c("column1", "column2"), 
#'           mean = c("column3", "column4"), 
#'           sum = c("column5"))

# Author: Antonio Fratamico


log_counts <- function(data, distinct = NULL, mean = NULL, sum = NULL, min = NULL, median = NULL, max = NULL) {
  
  # Always Display Number of Rows of Dataset
  logger::log_info("Number of Rows: {nrow(data)}")

  # Distinct #
  if (!is.null(distinct)) {
    for (col in distinct) {
      if (col %in% colnames(data)) {
        logger::log_info("Distinct {col} Count: {n_distinct(data[[col]])}")
      } else {
        logger::log_warn("Column '{col}' not found in data.")
      }
    }
  } else {
    logger::log_info("No specific columns provided for distinct count.")
  }

  # Mean #
  if (!is.null(mean)) {
    for (col in mean) {
      if (col %in% colnames(data)) {
        logger::log_info("Mean of {col}: {mean(data[[col]], na.rm = TRUE)}")
      } else {
        logger::log_warn("Column '{col}' not found in data.")
      }
    }
  } else {
    logger::log_info("No specific columns provided for mean.")
  }

  # Sum #
  if (!is.null(sum)) {
    for (col in sum) {
      if (col %in% colnames(data)) {
        logger::log_info("Sum of {col}: {sum(data[[col]], na.rm = TRUE)}")
      } else {
        logger::log_warn("Column '{col}' not found in data.")
      }
    }
  } else {
    logger::log_info("No specific columns provided for sum.")
  }

  # Min #
  if (!is.null(min)) {
    for (col in min) {
      if (col %in% colnames(data)) {
        logger::log_info("Min of {col}: {min(data[[col]], na.rm = TRUE)}")
      } else {
        logger::log_warn("Column '{col}' not found in data.")
      }
    }
  } else {
    logger::log_info("No specific columns provided for min.")
  }

  # Median #
  if (!is.null(median)) {
    for (col in median) {
      if (col %in% colnames(data)) {
        logger::log_info("Median of {col}: {median(data[[col]], na.rm = TRUE)}")
      } else {
        logger::log_warn("Column '{col}' not found in data.")
      }
    }
  } else {
    logger::log_info("No specific columns provided for median.")
  }

  # Max #
  if (!is.null(max)) {
    for (col in max) {
      if (col %in% colnames(data)) {
        logger::log_info("Max of {col}: {max(data[[col]], na.rm = TRUE)}")
      } else {
        logger::log_warn("Column '{col}' not found in data.")
      }
    }
  } else {
    logger::log_info("No specific columns provided for max.")
  }
}
