# Multiple Regression using ChickWeight dataset

# Load dataset
data(ChickWeight)

# Convert Diet to factor
ChickWeight$Diet <- as.factor(ChickWeight$Diet)

# Build multiple regression model
model <- lm(weight ~ Time + Diet, data = ChickWeight)

# Display model summary
summary(model)

# Predict weight
ChickWeight$Predicted_Weight <- predict(model)

# Calculate model error
ChickWeight$Error <- ChickWeight$weight - ChickWeight$Predicted_Weight

# Display actual, predicted and error
head(ChickWeight[, c("weight", "Predicted_Weight", "Error")])

# Calculate Mean Squared Error
MSE <- mean(ChickWeight$Error^2)

# Calculate Root Mean Squared Error
RMSE <- sqrt(MSE)

cat("Mean Squared Error:", MSE, "\n")
cat("Root Mean Squared Error:", RMSE, "\n")