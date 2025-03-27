#' This function adds lines above and below a log description making it easier to read in the console. This helps
#' to reduce the amount of repeated code within a script
#' 
#' Author: Antonio Fratamico

library(glue)

log_with_spacing <- function(log_desc){
  
  logger::log_info("-----------------------------------------------------")
  logger::log_info(glue(log_desc))
  logger::log_info("-----------------------------------------------------")
  
}
