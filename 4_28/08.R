# 1번
v <- c(1, 3, -2, 5, -8)

one.max.norm <- function(v) {
    max <- 0
    for (i in 1:length(v)) {
        if (abs(v[i]) > max) {
            max <- abs(v[i])
        }
    }
    print(max)
}

one.max.norm(v)

#2번
my.factorial <- function(n) {
    N <- 1
    while (n > 0) {
        N <- N * n
        n <- n - 1
    }
    print(N)
}

my.factorial(5)
