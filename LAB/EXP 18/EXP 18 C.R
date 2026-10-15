marks <- c(65, 72, 80, 55, 90)
students <- c("A", "B", "C", "D", "E")

barplot(marks,
        names.arg = students,
        main = "Student Marks",
        xlab = "Students",
        ylab = "Marks",
        col = "orange",
        border = "darkorange",
        ylim = c(0, 100))