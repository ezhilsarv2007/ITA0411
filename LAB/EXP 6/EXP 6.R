# Create a vector
numbers <- c(10, 20, 30, 40)
# Create a matrix
marks <- matrix(1:6, nrow=2, byrow=TRUE)
# Create a function
add <- function(x, y) {
  x + y
}
# Create a list
mylist <- list(
  Numbers = numbers,
  Marks = marks,
  Addition = add
)
# Display the complete list
print(mylist)
# Display individual contents
print(mylist$Numbers)
print(mylist$Marks)
print(mylist$Addition(10, 20))