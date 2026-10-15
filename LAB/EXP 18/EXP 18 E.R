age <- c(18, 19, 20, 18, 21, 20, 19, 22, 21, 20)
marks <- c(65, 72, 80, 55, 90, 75, 85, 60, 70, 95)

plot(age, marks,
     main = "Age vs Student Marks",
     xlab = "Age",
     ylab = "Marks",
     pch = 19,
     cex = 1.3,
     col = "purple",
     xlim = c(17, 23),
     ylim = c(50, 100))

grid()