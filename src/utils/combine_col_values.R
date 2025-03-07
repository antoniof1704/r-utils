#' This function can be used if you want to combine several other vars in a dataset into
#' one new var, usually useful when creating unique IDs. See example below.
#'
#' Example usage:
#' combine_col_values(df, cols = c("A", "B"), combined_col_name = "Combined_Col")
#'
#' For user_1, A = NEW, B = 23. So the Combined_Col = NEW-23


combine_col_values <- function(df, cols, combined_col_name) {
  
df %>%
    mutate(
      !!combined_col_name := pmap_chr(select(df, all_of(cols)), ~ paste(na.omit(c(...)), collapse = "-"))
    )

}
