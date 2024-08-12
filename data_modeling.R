# Load libraries
library(caret)

# Read cleaned data
data_clean <- read.csv("data/datos_limpios.csv")

# Split data into training and testing sets
set.seed(123)
trainIndex <- createDataPartition(data_clean$target_variable, p = 0.8, list = FALSE)
train_data <- data_clean[trainIndex, ]
test_data <- data_clean[-trainIndex, ]

# Train a linear regression model
model <- train(target_variable ~ ., data = train_data, method = "lm")

# Evaluate the model
predictions <- predict(model, newdata = test_data)
mse <- mean((predictions - test_data$target_variable)^2)
print(paste("Model MSE: ", mse))
