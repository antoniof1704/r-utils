#' This script exports any datasets specified in the function to rstudiodata. It
#' also saves the config used to produce the datasets as a .txt file too. It saves them
#' all to a brand new folder in the rstudio data file path (specified in config)

export_to_csv <- function(date, final_dataset, config_yml) {

  logger::log_info("-----------------------------------------------------")
  logger::log_info("Starting export_to_csv Function")
 
  # Get output master_dataset_path from configuration
  output_path <- config::get("master_dataset_path", file = config_yml)

  # Create the master datasets folder for the specific date of run
  output_folder <- paste0(output_path, date, "_Master_Datasets/")
  if (!dir.exists(output_folder)) {
    dir.create(output_folder, recursive = TRUE)
  }

  # Validate data frames before exporting
  if (is.null(usage_master_ind) || nrow(usage_master_ind) == 0) {
    stop("final_dataset is empty or NULL")
  }

  logger::log_info("Saving datasets as .csv")

  # Export data frame to a CSV file
  tryCatch({
    write.csv(final_dataset, file = paste0(output_folder, date, "_Master_Dataset.csv"), row.names = FALSE)
  }, error = function(e) {
    message("Error exporting final_dataset: ", e$message)
  })

  logger::log_info("csvs Saved!")
 
  # Save config in master datasets folder too 

  logger::log_info("Config Being Saved to rstudiodata")
 
  config_to_save <- (config::get(file = config_yml))
  file_path <- paste0(output_folder, date, "_Config.txt")
  writeLines(paste(names(config_to_save), unlist(config_to_save), sep = ": "), file_path)

  logger::log_info("Config Saved to rstudiodata!")
  logger::log_info("export_to_csv Function Finished!")
}
