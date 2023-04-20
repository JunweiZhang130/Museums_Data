#### Preamble ####
# Purpose: Cleans the Met Dataset
# Author: Rae Zhang
# Data: 17 April 2023
# Contact: junwei.zhang@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)
# set the working directory to where the raw data is stored
MetObjects <- read_csv("inputs/data/MetObjects.csv")

#### Clean data ####
cleaned_data <- MetObjects %>% 
  rename(Highlight = `Is Highlight`,
         Timeline_Work = 'Is Timeline Work')

# Select only the columns we want to keep
cleaned_data <- cleaned_data %>% 
  select(`Object ID`,
         Highlight, 
         Department, 
         AccessionYear, 
         `Object Name`, 
         Title, 
         Culture, 
         `Artist Display Name`,
         `Artist Nationality`)

# Create example data frame with AccessionYear column
df <- data.frame(
  ObjectID = c(1, 2, 3),
  AccessionYear = c("19171917")
)

# Check the unique values in AccessionYear column
unique(cleaned_data$AccessionYear)

# Replace the value "19171917" with "1917"
cleaned_data$AccessionYear <- gsub("19171917", "1917", cleaned_data$AccessionYear)

# Check the unique values in AccessionYear column again to confirm the change
unique(cleaned_data$AccessionYear)


#### Save data ####
write_csv(cleaned_data, "outputs/cleaned_data.csv")

