# Load libraries
library(tidyverse)

# Read data from a CSV file
data <- read.csv("data/datos_crudos.csv")

# Preprocess data
data_clean <- data %>%
  filter(!is.na(important_variable)) %>%
  mutate(new_variable = log(existing_variable))

# Save cleaned data
write.csv(data_clean, "data/datos_limpios.csv", row.names = FALSE)
