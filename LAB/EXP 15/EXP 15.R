# Load iris dataset
data(iris)

# 1. Display dimensions
print("Dimensions of iris dataset:")
print(dim(iris))

# 2. Summary of dataset
print("Summary:")
print(summary(iris))

# 3. Standard deviation
print("Standard Deviation:")
print(sapply(iris[1:4], sd))

# 4. Quantiles
print("Quantiles:")
print(sapply(iris[1:4], quantile))

# 5. Grouping by Species
print("Mean values by Species:")
print(aggregate(. ~ Species, data = iris, mean))

# 6. Pivot table
print("Pivot Table - Species vs Sepal Length:")
print(aggregate(Sepal.Length ~ Species, data = iris, mean))

# 7. Create categories for Sepal.Length
iris$Sepal_Length_Category <- cut(
  iris$Sepal.Length,
  breaks = c(0, 5, 6, 7, Inf),
  labels = c("Low", "Medium", "High", "Very High")
)

# 8. Categorical grouping
print("Sepal Length Categories:")
print(table(iris$Sepal_Length_Category))

# 9. Category-wise Species count
print("Sepal Length Category by Species:")
print(table(iris$Sepal_Length_Category, iris$Species))