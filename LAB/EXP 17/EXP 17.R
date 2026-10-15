library(ggplot2)
library(titanic)

data(titanic_train)

# 1. Bar Chart - Survival vs Class
p1 <- ggplot(titanic_train, aes(x = factor(Pclass), fill = factor(Survived))) +
  geom_bar(position = "dodge") +
  labs(title = "Survival vs Class",
       x = "Class",
       y = "Number of Passengers",
       fill = "Survived")

print(p1)

# 2. Bar Chart - Survival vs Class by Gender
p2 <- ggplot(titanic_train, aes(x = factor(Pclass), fill = factor(Survived))) +
  geom_bar(position = "dodge") +
  facet_wrap(~Sex) +
  labs(title = "Survival vs Class by Gender",
       x = "Class",
       y = "Number of Passengers",
       fill = "Survived")

print(p2)

# 3. Histogram - Age
p3 <- ggplot(titanic_train, aes(x = Age)) +
  geom_histogram(binwidth = 5, na.rm = TRUE) +
  labs(title = "Histogram of Age",
       x = "Age",
       y = "Number of Passengers")

print(p3)