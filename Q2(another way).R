#2a
# Create the initial data frame
data <- data.frame(
  Name = c("Ram", "Alwin", "Billy", "Amera", "Olive", "Dora"),
  Age = c(30, 35, 22, 16, 42, 59),
  Height = c(177, 164, 155, 180, 124, 150),
  Weight = c(57, 48, 45, 60, 52, 55),
  Gender = c("M", "F", "M", "F", "F", "F")
)

# Display the initial data frame
print("Initial Data Frame:")
print(data)

# Invert the gender for all individuals
data$Gender <- ifelse(data$Gender == "M", "F", "M")

# Display the data frame with inverted gender
print("Data Frame with Inverted Gender:")
print(data)

#2b
# Create the new data frame
working_data <- data.frame(
  Name = c("Ram", "Alwin", "Billy", "Amera", "Olive", "Dora"),
  Working = c("Y", "N", "Y", "N", "Y", "N"),
  stringsAsFactors = FALSE  # Ensure "Working" is treated as character, not factor
)

# Add the new data frame to the previous one column-wise
combined_data <- cbind(data, working_data)

# Display the combined data frame
print("Combined Data Frame:")
print(combined_data)

# Check the dimensions and class of data in each column
cat("Number of rows:", nrow(combined_data), "\n")
cat("Number of columns:", ncol(combined_data), "\n")
cat("Class of data in each column:\n")
for (col in names(combined_data)) {
  cat(paste(col, ":", class(combined_data[[col]]), "\n"))
}
