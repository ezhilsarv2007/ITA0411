# Load required package
library(reshape2)

# Load the airquality dataset
data(airquality)

# Display the original data
cat("Original Airquality Data:\n")
print(head(airquality))

# Melt the data
melt_data <- melt(
  airquality,
  id.vars = c("Month", "Day"),
  measure.vars = c("Ozone", "Solar.R", "Wind", "Temp")
)

cat("\nMelted Data:\n")
print(head(melt_data))

# Cast the data to find monthly averages
monthly_avg <- dcast(
  melt_data,
  Month ~ variable,
  fun.aggregate = mean,
  na.rm = TRUE
)

cat("\nMonthly Averages:\n")
print(monthly_avg)