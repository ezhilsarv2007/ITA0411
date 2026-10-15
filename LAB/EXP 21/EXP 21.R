# Logistic Regression on Iris Dataset

# Load dataset
data(iris)

# Install and load required package
install.packages("nnet")
library(nnet)

# Randomly split data into 80% training and 20% testing
set.seed(123)

train_index <- sample(1:nrow(iris), 0.8 * nrow(iris))

train <- iris[train_index, ]
test <- iris[-train_index, ]

# Build multinomial logistic regression model
model <- multinom(Species ~ Petal.Length + Petal.Width,
                  data = train)

# Display model summary
summary(model)

# Predict Species for test data
predicted <- predict(model, newdata = test)

# Confusion Matrix
confusion_matrix <- table(
  Actual = test$Species,
  Predicted = predicted
)

print(confusion_matrix)

# Calculate Accuracy
accuracy <- mean(predicted == test$Species)

cat("Accuracy:", accuracy, "\n")