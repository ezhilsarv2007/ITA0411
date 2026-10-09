# Create three arrays
array1 <- array(1:6, dim = c(2, 3))
array2 <- array(7:12, dim = c(2, 3))
array3 <- array(13:18, dim = c(2, 3))

# Combine arrays row-wise
result <- rbind(array1, array2, array3)

# Display the arrays
print("Array 1:")
print(array1)

print("Array 2:")
print(array2)

print("Array 3:")
print(array3)

# Display the combined result
print("Combined Array Row-wise:")
print(result)