# 5 x 4 matrix
m1 <- matrix(1:20, nrow=5, ncol=4, byrow=TRUE)
rownames(m1) <- c("R1","R2","R3","R4","R5")
colnames(m1) <- c("C1","C2","C3","C4")
# 3 x 3 matrix
m2 <- matrix(1:9, nrow=3, ncol=3, byrow=FALSE)
rownames(m2) <- c("R1","R2","R3")
colnames(m2) <- c("C1","C2","C3")
# 2 x 2 matrix
m3 <- matrix(1:4, nrow=2, ncol=2, byrow=TRUE)
rownames(m3) <- c("R1","R2")
colnames(m3) <- c("C1","C2")
print(m1)
print(m2)
print(m3)