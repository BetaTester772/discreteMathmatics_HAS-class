# 1번
find.max.term <- function(a) {
    m.max <- a[1]

    for (i in 2:length(a)) {
        if (a[i] > m.max) {
            m.max <- a[i]
        }
    }
    return(m.max)
}

a <- c(0, 1, -2, 5, 3)
find.max.term(a)

# 2번
linear.search <- function(a, x) {
    i <- 1
    while (i <= length(a) && a[i] != x) {
        i <- i + 1
        if (i <= length(a)) {
            location <- i
        }
        else {
            location <- 0
        }
    }
    return(location)
}

a <- c(0, 2, 5, 4, 3)
linear.search(a, 5)

a <- c(0, 2, 5, 4, 3)
linear.search(a, 6)

# 3번
binary.search <- function(a, x) {
    i <- 1
    j <- length(a)
    while (i < j) {
        m <- floor((i + j) / 2)
        if (x > a[m]) {
            i <- m + 1
        }
        else {
            j <- m
        }

        if (x == a[i]) {
            location <- i
        }
        else {
            location <- 0
        }
    }
    return(location)
}

a <- c(1, 2, 4, 5, 9)
binary.search(a, 5)

a <- c(1, 2, 4, 5, 9)
binary.search(a, 7)