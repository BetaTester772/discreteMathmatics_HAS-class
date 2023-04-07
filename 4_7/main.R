# 영행렬
O <- matrix(0, nrow = 3, ncol = 3)

# 단위 행렬( diag --> 대각선 )
a <- diag(5)

# 상삼각행렬
a[lower.tri(a, diag = FALSE)] <- 0

# 하삼각행렬
a[upper.tri(a, diag = FALSE)] <- 0

# 핼렬곱 --> %*%

