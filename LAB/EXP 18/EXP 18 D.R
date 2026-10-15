marks <- c(65, 72, 80, 55, 90)

plot(marks,
     type = "o",
     pch = 16,
     lwd = 2,
     main = "Student Marks Trend",
     xlab = "Student Number",
     ylab = "Marks",
     col = "blue",
     ylim = c(0, 100))

grid()