# 1번
buuble.sort <- function(a) {
    n <- length(a)

    for (i in 1:(n - 1)) {
        for (j in 1:(n - i)) {
            if (a[j] > a[j + 1]) {
                temp <- a[j]
                a[j] <- a[j + 1]
                a[j + 1] <- temp
            }
        }
    }
    return(a)
}

a <- c(0, 1, -2, 5, 3)
buuble.sort(a)

# 2번
insertion.sort <- function(a) {
    n <- length(a)
    for (j in 2:n) {
        i <- 1
        while (a[j] > a[i]) {
            i <- i + 1
        }
        m <- a[j]
        for (k in 0:(j - i - 1)) {
            if (j - k < 1 || j - k - 1 < 1 || k < 0) break
            a[j - k] <- a[j - k - 1]
        }
        a[i] <- m
    }
    return(a)
}

a <- c(1, 4, 3, 5, 2)
insertion.sort(a)