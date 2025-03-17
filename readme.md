# Employee Data Processing Assignment

This project implements a system to import, process, and export employee salary data using Python and R. The solution handles all the requirements specified in the assignment.

## Features

1. **Data Import**: Imports employee salary data from a CSV file
2. **Employee Lookup**: Function to retrieve employee details by name
3. **Data Processing**: Uses dictionaries to process and analyze salary data
4. **Error Handling**: Robust error handling for all operations
5. **Data Export**: Exports employee details to CSV and zips them
6. **R Integration**: Includes R script to unzip and display the data

## Requirements

### Python Libraries (Installing Pandas usually installed the rest but adding these just to be thorough)
- pandas
- numpy
- zipfile
- csv
- json

### R Libraries
- readr
- dplyr

## Usage Instructions

### Running the Jupyter Notebook

1. Clone this repository or download the files
2. Place your `salary_data.csv` in the same directory as the notebook
   - If no data file is found, the system will create sample data
3. Open the Jupyter Notebook `employee-data-processor.ipynb`
4. Run all cells to execute the complete workflow

### Using the R Script

After running the Python notebook:

1. Open R or RStudio
2. Set your working directory to the location of the files
3. Run the command: `source('unzip_and_display_employee.R')`

## File Structure

```
.
├── salaries.ipynb    # Main Jupyter Notebook with all Python code
├── unzip_and_display_employee.R     # R script for Task 6
├── Employee_Profile.zip             # Generated zip file with employee data
├── Employee_Profile/                # Generated directory
│   └── jane_doe_profile.csv         # Example exported employee CSV
└── README.md                        # This file
```

## Functions Overview

### Python Functions

- `get_employee_details(employee_name, data)`: Retrieves employee information by name
- `process_salary_data(data)`: Processes salary data and returns statistics
- `safe_employee_operation(func, *args, **kwargs)`: Wrapper for error handling
- `export_employee_to_csv(employee_name, output_dir)`: Exports employee data to CSV and zips it

### R Functions

- `unzip_and_display_employee(zip_file)`: Unzips and displays employee data

## Notes

- The system handles missing data files by creating sample data
- Error handling is implemented throughout the code
- The R script is designed to work with the zip file produced by the Python code
