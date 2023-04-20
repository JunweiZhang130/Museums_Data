#### Preamble ####
# Purpose: Simulates the Dataset 
# Author: Rae Zhang
# Data: 17 Apeil 2023
# Contact: junwei.zhang@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]

#### Simulate data ####
# [...ADD CODE HERE...]


<<<<<<< HEAD
# Create simulated data for the artwork table
artwork_id <- 1:1000
artist_name <- sample(c("Leonardo da Vinci", 
                        "Vincent van Gogh", 
                        "Pablo Picasso", 
                        "Claude Monet", 
                        "Rembrandt van Rijn"), 1000, 
                      replace = TRUE)
artwork_title <- paste("Artwork", artwork_id)
creation_year <- sample(1500:2022, 1000, 
                        replace = TRUE)

medium <- sample(c("Oil on canvas", 
                   "Watercolor", 
                   "Bronze sculpture", 
                   "Ink on paper", 
                   "Mixed media"), 1000, 
                 replace = TRUE)
=======
>>>>>>> parent of 7808dbb (Simulation and download the data.)

