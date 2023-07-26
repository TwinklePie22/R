# Load the mtcars dataset
data(mtcars)

# Select four different continuous variables from the mtcars dataset
selected_vars <- c("mpg", "disp", "hp", "wt")

# Plot with lines and points for different variables with different colors
par(mfrow = c(2, 2))  # Set up a 2x2 grid for subplots
for (var in selected_vars) {
  plot(mtcars[, var], type = "b", pch = 16, col = "blue", lwd = 2,
       main = paste("Line and Points Plot of", var),
       xlab = "Index", ylab = var)
}

# Choose one variable from each and highlight it with different color
highlight_vars <- c("mpg", "disp", "hp", "wt")

par(mfrow = c(1, 1))  # Reset the plotting layout to a single plot
for (i in seq_along(selected_vars)) {
  var <- selected_vars[i]
  highlight_var <- highlight_vars[i]
  plot(mtcars[, var], type = "b", pch = 16, col = ifelse(var == highlight_var, "red", "blue"),
       lwd = ifelse(var == highlight_var, 2, 1),
       main = paste("Line and Points Plot of", var),
       xlab = "Index", ylab = var)
}
