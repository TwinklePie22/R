# Read the file
data <- read.table("Table1.txt", header = FALSE)
# Set the column names
colnames(data) <- c("Name", "Age", "Height", "Weight", "Gender")
# Set the row names to the values in the first column (Name)
rownames(data) <- data$Name
# Remove the Name variable
data <- data[, -1]
# Print the modified data
print(data)
