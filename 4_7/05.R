#1번
A <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow=3, byrow=TRUE)
A[lower.tri(A, diag=FALSE)] <- 0
A

# 2번
a <- matrix(c(0, 1, 0, 0), nrow=2, ncol=2)
b <- matrix(c(0, 0, 0, 1), nrow=2, ncol=2)

a
b

# 행렬곱
a %*% b

# 행렬곱의 결과가 영행렬인지 확인
all(a %*% b == 0)
