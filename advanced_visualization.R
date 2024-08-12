# Load libraries
library(ggplot2)
library(ggrepel)

# Read data
data_clean <- read.csv("data/datos_limpios.csv")

# Scatter plot with labels
ggplot(data_clean, aes(x = variable_x, y = variable_y, label = name)) +
  geom_point(aes(color = category)) +
  geom_text_repel() +
  labs(title = "Scatter Plot with Labels")
