#' This process creates a function that produces a file path and file name that can be inserted 
#' into the log_appender() in the main script. This will allow us to specify where to save the logs, 
#' if we want to.

# Author: Antonio Fratamico

log_file <- function(date, config_yml) {

      log_file <- file.path(config::get("log_path", file= config_yml),
                          paste0(date,"_",format(Sys.time(), "%H-%M-%S"), "_Log_Outputs.txt"))
  
return(log_file)
}
