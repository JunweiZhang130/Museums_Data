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

#### Save data ####
write_csv(cleaned_data, "outputs/cleaned_data.csv")

