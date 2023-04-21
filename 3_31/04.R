p <- c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE)
q <- c(TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, FALSE, FALSE)
r <- c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE)

lhs <- p &(q|r)
rhs <- (p&q) | (p&r)

data.frame(p, q, r, lhs, rhs)


x <- 1: 1000
sum(which(x%%9==0))