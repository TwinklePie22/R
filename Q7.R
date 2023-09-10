#7a
file_path <- "table.txt"
contents <- read.table(file_path, header = TRUE, sep = "\t")
print(contents)

#7b
# Find the missing values:
print("Missing values:")
missing_values <- subset(contents, Age == '--' | Height == '*' | Weight == '**')
print(missing_values)

#7c
# Replace the missing values in column 4 with the average of the column values:
numeric_values <- as.numeric(contents$Weight)
average <- mean(numeric_values, na.rm = TRUE)
contents$Weight[is.na(numeric_values)] <- average

print("Modified contents:")
print(contents)
