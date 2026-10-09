x <- rnorm(100)

print(x)

# Count positive and negative values
positive <- sum(x > 0)
negative <- sum(x < 0)

print(positive)
print(negative)

x <- round(rnorm(100), 1)

print(table(x))