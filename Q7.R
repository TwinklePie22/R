# Read the content of the file:
file_path <- "table.txt"
contents <- read.delim(file_path, header = TRUE, sep = "\t")
print(contents)

# Find the missing values:
print("Missing values:")
missing_values <- subset(contents, Age == '--' | Height == '--' | Weight == '--' | Age == '*' | Height == '**' | Weight == '**')
print(missing_values)

# Replace the missing values in column 4 with the average of the column values:
numeric_values <- as.numeric(as.character(contents$Weight))
average <- mean(numeric_values, na.rm = TRUE)

contents$Weight[is.na(numeric_values)] <- average

print("Modified contents:")
print(contents)
