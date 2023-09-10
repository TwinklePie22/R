#a
#Either increment from 0 to 2 or 1 to 3
for (a in 0:2) {
  for (b in 0:2) {
    if (b == 2) {
      break  # Exit the inner loop after 2 incrementations of 'b'
    }
    cat("a:", a, ", b:", b, "\n")
  }
}

#b
#skipping 3 and 4
cat("Incrementing i from 2 to 5")
i <- 2
while (i <= 5) {
  if (i == 3 || i == 4) {
    i <- i + 1
    next
  }
  cat(i, "\n")
  i <- i + 1
}

# #skipping only one number
# i <- 2
# while (i <= 5) {
#   if (i == 4) {
#     i <- i + 1
#     next
#   }
#   cat(i, "\n")
#   i <- i + 1
# }
