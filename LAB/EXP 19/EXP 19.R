# Advertising Dataset - Linear Regression

# Create Advertising data
Spend <- c(23, 45, 34, 67, 12, 56, 78, 90, 43, 32)
Sales <- c(15, 25, 21, 32, 10, 28, 38, 42, 24, 20)

advertising <- data.frame(Spend, Sales)

# Build regression model
model <- lm(Sales ~ Spend, data = advertising)

# Display model summary
summary(model)

# Predict Sales
new_data <- data.frame(Spend = c(50, 75, 100))
prediction <- predict(model, newdata = new_data)

# Display predictions
prediction

# Plot regression line
plot(advertising$Spend, advertising$Sales,
     main = "Advertising Spend vs Sales",
     xlab = "Advertising Spend",
     ylab = "Sales",
     pch = 19,
     col = "blue")

abline(model, col = "red", lwd = 2)