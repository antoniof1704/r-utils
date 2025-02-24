# Packages for loading into workspace

logger::log_info("Loading dependencies")

load_packages <- c(
  'config', # environment management
  'odbc', # db management
  'DBI', # db management
  'haven', # load sas data
  'readxl', # load excel data
  'dplyr', # data manipulation
  'janitor', # tidying data
  'tidyr', # tidying data
  'purrr', # tidyverse looping
  'ggplot2', # data vis
  'ggrepel', # extended ggplot2
  'stringr', # string manipulation (incl regex)
  'stringi', # more string manipulation
  'tidyselect', # string inputs for `dplyr::select()`
  'tibble', # dataframe management from tidyverse
  'forcats', # categorical data
  'readr', # reading in data
  'broom', # tidying data
  'plotly', #interactive graphs
  'scales', # numeric formatting
  'grid', # improved plotting
  'gridExtra', # improved plotting
  'ggpubr', # plot manipulation
  'ggrepel', # plotting text on graphs
  'png', # plotting png images on ggplot2
  'waffle', # producing waffle charts in R
  'reshape2', # producing tables for markdown
  'knitr', # Create docs from Rmd
  'rmarkdown', # Rmd
  'shiny', # create app within markdown
  'tictoc', #  code performance management
  'DiagrammeR', # flowchart plotting using js/D3 in R
  'kableExtra',
  'lubridate', # Date manipulation
  'factoextra', # Clustering visualisation
  'fpc', # Clustering boostrapping
  'kableExtra', # Change tables to html
  'treemap', # Change tables to html
  'pivottabler',
  'treemapify',
  'vtree', # to create qa_trees
  'DiagrammeR',
  'DiagrammeRsvg',
  'htmlwidgets'
)

# Check install & load a package into the workspace

install_dependencies <- function(packages = load_packages) {
  # install packages that are not currently in installed.packages() environment
  invisible(lapply(packages, function(x) {if (!(x %in% rownames(installed.packages()))) install.packages(x)}))
  invisible(lapply(packages, library, character.only = TRUE))
  
}
