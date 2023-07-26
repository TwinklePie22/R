countDivisors <- function(num) {
  num <- as.integer(num)
  
  if (is.na(num) || num <= 1) {
    cat("Please provide a valid integer greater than 1.\n")
    return()
  }
  
  # Print the given integer
  cat("The given integer is:", num, "\n")
  
  divisorCount <- 0
  divisors <- c()
  
  # Find divisors
  for (i in 2:(num / 2)) {
    if (num %% i == 0) {
      divisorCount <- divisorCount + 1
      divisors <- c(divisors, i)
    }
  }
  
  # Print divisors and count
  cat("Divisors:", paste(divisors, collapse = " "), "\n")
  cat("Number of Divisors:", divisorCount, "\n")
}

# Example usage:
countDivisors(12)
