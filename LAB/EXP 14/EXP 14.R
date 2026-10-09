# Load ChickWeight dataset
data(ChickWeight)

# Display first few rows
head(ChickWeight)

# Display structure
str(ChickWeight)

# Summary
summary(ChickWeight)

# Sort by Weight
sorted_data <- ChickWeight[order(ChickWeight$weight), ]

print("Sorted Data:")
print(head(sorted_data))

# Install reshape2 if needed
# install.packages("reshape2")

library(reshape2)

# Melt the dataset
melted_data <- melt(
  ChickWeight,
  id.vars = c("Chick", "Time", "Diet")
)

print("Melted Data:")
print(head(melted_data))

# Cast by Diet and calculate average weight
casted_data <- dcast(
  melted_data,
  Diet ~ variable,
  mean
)

print("Casted Data:")
print(casted_data)