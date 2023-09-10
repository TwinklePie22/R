count_divisors <- function(num) {
  divisors <- c()  # To store the divisors
  count <- 0       # To keep track of the count of divisors
  
  cat("Given Integer:", num, "\n")
  for (i in 2:(num - 1)) {
    if (num %% i == 0) {
      divisors <- c(divisors, i)
      count <- count + 1
    }
  }
  cat("Divisors:", divisors, "\n")
  cat("Number of divisors (excluding 1 and itself):", count, "\n")
}

# Example usage:
num <- 30
count_divisors(num)
