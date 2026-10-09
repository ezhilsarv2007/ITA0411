# Create the data frame
exam_data <- data.frame(
  name = c("John", "Sara", "David", "Priya"),
  score = c(85, 72, 90, 65),
  attempts = c(1, 2, 1, 3),
  qualify = c(TRUE, TRUE, TRUE, FALSE)
)

# Display the data frame
cat("Original Exam Data:\n")
print(exam_data)

# Extract data
cat("\nNames:\n")
print(exam_data$name)

cat("\nSecond Row:\n")
print(exam_data[2, ])

# Add a new column
exam_data$grade <- c("A", "B", "A", "C")

cat("\nAfter Adding Grade Column:\n")
print(exam_data)

# Add a new row
exam_data <- rbind(
  exam_data,
  data.frame(
    name = "Arun",
    score = 78,
    attempts = 2,
    qualify = TRUE,
    grade = "B"
  )
)

cat("\nAfter Adding New Row:\n")
print(exam_data)

# Sort by score
exam_data <- exam_data[order(exam_data$score, decreasing = TRUE), ]

cat("\nSorted by Score:\n")
print(exam_data)

# Save to CSV file
write.csv(exam_data, "exam_data.csv", row.names = FALSE)

cat("\nData saved successfully to exam_data.csv\n")