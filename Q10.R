# Load the mtcars dataset
data(mtcars)
#10a
# Select four different continuous variables from the mtcars dataset
selected_vars <- c("mpg", "disp", "hp", "wt")

# Define colors and line widths for each variable
colors <- c("blue", "green", "red", "orange")
line_widths <- c(1, 1, 1, 2)  # Adjust line widths as needed

# Create a plot for each selected variable with one variable highlighted
for (i in seq_along(selected_vars)) {  # Use seq_along instead of 1:length
  var <- selected_vars[i]
  col <- colors[i]
  lwd <- line_widths[i]
  
  plot(mtcars[, var], type = "n", xlab = "Index", ylab = var, main = paste("Line and Points Plot of", var))
  lines(mtcars[, var], col = col, lwd = lwd)
  points(mtcars[, var], col = col, pch = 16)
}
#10b
# Choose one variable from each group and highlight it with a different color
highlight_vars <- c("mpg", "disp", "hp", "wt")
highlight_colors <- c("red", "green", "blue", "orange")

for (i in seq_along(highlight_vars)) {  # Use seq_along instead of 1:length
  var <- highlight_vars[i]
  col <- highlight_colors[i]
  
  lines(mtcars[, var], col = col, lwd = 2)
  points(mtcars[, var], col = col, pch = 16)
}
