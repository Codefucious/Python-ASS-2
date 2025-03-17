
# R script to unzip and display employee data

# Load required libraries
library(readr)
library(dplyr)

# Function to unzip and display employee data
unzip_and_display_employee <- function(zip_file = "Employee_Profile.zip") {
  # Create a temporary directory
  temp_dir <- tempdir()

  # Unzip the file
  tryCatch({
    unzip(zip_file, exdir = temp_dir)
    cat("Successfully unzipped file to:", temp_dir, "
")
  }, error = function(e) {
    stop("Error unzipping file: ", e$message)
  })

  # Find CSV files in the extracted directory
  csv_files <- list.files(temp_dir, pattern = "*.csv", full.names = TRUE)

  if (length(csv_files) == 0) {
    stop("No CSV files found in the unzipped directory")
  }

  # Read and display each CSV file
  for (file in csv_files) {
    cat("
Reading file:", basename(file), "
")
    data <- read_csv(file)

    cat("Employee data:
")
    print(data)

    # Optional: Display some statistics
    if ("salary" %in% colnames(data)) {
      cat("
Employee salary:", data$salary, "
")
    }

    if ("department" %in% colnames(data)) {
      cat("Employee department:", data$department, "
")
    }
  }

  return(invisible(NULL))
}

# Execute the function
unzip_and_display_employee()
