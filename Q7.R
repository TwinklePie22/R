#7a
contents <- read.table("table.txt", header = TRUE, sep = "\t")
# contents <- read.table(file_path, header = TRUE, sep = "\t", na.strings = c("--", "*", "**"))
print(contents)

#7b
# Find the missing values:
cat("\nMissing values:\n")
missing_values <- subset(contents, Age == '--' | Height == '*' | Weight == '**')
# missing_values <- subset(contents, is.na(Age) | is.na(Height) | is.na(Weight))
print(missing_values)

#7c
# Replace the missing values in column 4 with the average of the column values:
numeric_values <- as.numeric(contents$Weight)
average <- mean(numeric_values, na.rm = TRUE)
contents$Weight[is.na(numeric_values)] <- average

cat("\nModified contents:\n")
print(contents)
