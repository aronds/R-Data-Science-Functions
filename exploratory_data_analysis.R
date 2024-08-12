# Load libraries
library(ggplot2)

# Read cleaned data
data_clean <- read.csv("data/datos_limpios.csv")

# Histogram
ggplot(data_clean, aes(x = numeric_variable)) +
  geom_histogram(binwidth = 10, fill = "blue", color = "black") +
  labs(title = "Distribution of Numeric Variable")

# Scatter plot
ggplot(data_clean, aes(x = variable_x, y = variable_y)) +
  geom_point() +
  labs(title = "Scatter Plot of Variable X vs Variable Y")
