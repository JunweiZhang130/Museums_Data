#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Data: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
<<<<<<< HEAD
library(readxl)

#### Download data ####
download.file("https://github.com/metmuseum/openaccess/raw/master/MetObjects.csv", 
              "MetObjects.csv")

#### Save data ####
MetObjects <- read_csv("inputs/data/MetObjects.csv")
=======
# [...UPDATE THIS...]

#### Download data ####
# [...ADD CODE HERE TO DOWNLOAD...]



#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(the_raw_data, "inputs/data/raw_data.csv") 

         
>>>>>>> parent of 7808dbb (Simulation and download the data.)
