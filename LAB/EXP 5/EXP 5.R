# Create a factor for women's heights
height <- c("Short", "Medium", "Tall", "Medium", "Tall", "Short")
height_factor <- factor(height)
print(height_factor)
# Display levels
print(levels(height_factor))
# Count each category
print(table(height_factor))
# Create a factor using random letters
letters_sample <- sample(LETTERS, 5)
letter_factor <- factor(letters_sample)
print(letter_factor)
# Display level
print(levels(letter_factor))