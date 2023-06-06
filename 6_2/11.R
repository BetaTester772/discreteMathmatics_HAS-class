# 1번
closest.points <- function(x) {

    min <- 1.797693e+308
    n <- length(x)

    for (i in 2:n) {
        for (j in 1:(i - 1)) {
            k <- x[i] - x[j]
            if (k < min) {
                min <- x[i] - x[j]
                closest.pair <- c(x[i], x[j])
            }
        }
    }
    return(closest.pair)
}

x <- c(1, 5, 8, 10, 15)
closest.points(x)

# 2번
plot.closest.points <- function(x, y) {
    min <- 1.797693e+308
    n <- length(x)
    for (i in 2:n) {
        for (j in 1:(i - 1)) {
            k <- abs(x[i] - x[j]) + abs(y[i  ] - y[j])
            if (k < min) {
                min <- k
                closest_pair <- c(x[i], y[i], x[j], y[j])
            }
        }
    }
    plot(c(closest_pair[1], closest_pair[3]), c(closest_pair[2], closest_pair[4]))
}

x <- c(1, 2, 5, 8, 12)
y <- c(-3, 4, 6, 8, 10)
plot.closest.points(x, y)