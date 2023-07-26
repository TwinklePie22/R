for (a in 0:2) {
  for (b in 0:2) {
    if (b == 2) {
      break  # Exit the inner loop after 2 incrementations of 'b'
    }
    cat("a:", a, ", b:", b, "\n")
  }
}
