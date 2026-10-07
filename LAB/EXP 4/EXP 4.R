a <- array(1:12, dim=c(2,3,2))

dimnames(a) <- list(
  c("Row1","Row2"),
  c("Col1","Col2","Col3"),
  c("Table1","Table2")
)

print(a)

# Specific elements
print(a[1,2,1])
print(a[2,3,2])