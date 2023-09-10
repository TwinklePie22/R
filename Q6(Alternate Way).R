# Example data frame
Name <- c("John", "Alice", "Bob", "Emily")
Age <- c(25, 30, 22, 25)
Grade <- c("A", "B", "C", "A")
df <- data.frame(Name, Age, Grade)

# Print the original data frame
cat("Original data frame:\n")
print(df)

# Replace all occurrences of "A" with NA in the "Grade" column
df$Grade[df$Grade == "A"] <- NA

# Print the modified data frame
cat("\nData frame with 'A' replaced with NA:\n")
print(df)
