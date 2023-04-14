# 연습문제1
cubic <- function(x = 2)
{
  x^3 + 3 * x^2
}

cubic()
cubic(3)

# 연습문제2
my.sd <- function(x)
{
  sqrt(sum((x - mean(x))^2) / length(x))
}
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
my.sd(x)

x <- c(1, 2, 5, 8, 9)
my.sd(x)
