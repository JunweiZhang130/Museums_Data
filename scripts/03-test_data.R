#### Preamble ####
# Purpose: Tests MET Datasets
# Author: Rae Zhang
# Data: 20 February 2023 
# Contact: junwei.zhang@mail.utoronto.ca
# License: MIT
# Pre-requisites: Have access to the paper


#### Workspace setup ####
# Loading in datasets
library("tidyverse")

cleaned_data <- read_csv(here::here("outputs/cleaned_data.csv"))

# Test datasets

# Test numbers of rows in cleaned_data
nrow(cleaned_data) == 477804

# Test the highlight status in cleaned_data
cleaned_data$Highlight |>
  unique() == c("FALSE",
                "TRUE"
  )

# Test min and max Object Number in cleaned_data
cleaned_data$`Object ID`  |> 
  min() == 1

cleaned_data$`Object ID`  |> 
  max() == 860873
