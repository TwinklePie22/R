#2a
# Create the initial data frame
Name <- c("Ram", "Alwin", "Billy", "Amera", "Olive", "Dora")
Age <- c(30, 35, 22, 16, 42, 59)
Height <- c(177, 164, 155, 180, 124, 150)
Weight <- c(57, 48, 45, 60, 52, 55)
Gender <- as.factor(c("M", "F", "M", "F", "F", "F"))
df <- data.frame(Name, Age, Height, Weight, Gender)
print("Original data frame: ")
print(df)
# Invert gender for all individuals
levels(df$Gender) <- c("M", "F")
df$Gender <- as.factor(df$Gender)
print("Data frame with inverted genders: ")
print(df)

#2b
# Create the new data frame
Working <- c("Y", "N", "Y", "N", "Y", "N")
df2 <- data.frame(Working, stringsAsFactors = FALSE)
# Add the new data frame to the previous one
df <- cbind(df, df2)
# Print the modified data frame
print(df)
# Print the number of rows and columns
cat("Number of rows:", nrow(df), "\n")
cat("Number of columns:", ncol(df), "\n")
# Print the class of data in each column
cat("Class of data in each column:\n")
for (col in names(df)) {
  cat(col, ":", class(df[[col]]), "\n")
}
