#' Template for Main Script to Initialise Dependencies and Load Other In-Built R 
#' Functions in 'src'

#' Author: Antonio Fratamico

#Initialize working directory --------------------------------------------------
setwd("~/r-utils")

# Install logger and config ----------------------------------------------------
#install.packages("logger")
library("logger")
#install.packages("config")  
library("config")

# Get todays date and convert to preferred format for file names ---------------
run_date <- format(Sys.Date(), "%y%m%d")

# Install dependencies ---------------------------------------------------------
source('~/r-utils/dependencies.R')
install_dependencies()

# Source functions -------------------------------------------------------------
sourceable<- list.files("src", full.names = TRUE, recursive = TRUE)
purrr::walk(sourceable, source)

# Save logs (Uncomment) --------------------------------------------------------
#log_file <- file.path(config::get("log_path", file= "config.yml"), paste0(date, "_Log_Outputs.txt"))
#logger::log_appender(logger::appender_tee(log_file, append = TRUE))


# Stop saving logs (Uncomment) -------------------------------------------------
#logger::log_appender(appender_stdout)

