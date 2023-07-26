# Define the function to replace a value with NA in a data frame
replaceValueWithNA <- function(df, value_to_replace) {
  # Convert the value to replace to NA if it matches any element in the data frame
  df[df == value_to_replace] <- NA
  
  return(df)
}

# Example data frame
df <- data.frame(
  Name = c("John", "Alice", "Bob", "Emily"),
  Age = c(25, 30, 22, 25),
  Grade = c("A", "B", "C", "A")
)

# Print the original data frame
print("Original data frame:")
print(df)

# Replace all occurrences of "A" with NA in the "Grade" column
modified_df <- replaceValueWithNA(df, "A")

# Print the modified data frame
print("\nData frame with 'A' replaced with NA:")
print(modified_df)
