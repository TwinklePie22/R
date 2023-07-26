# Load the mtcars dataset
data(mtcars)
# Plot Miles/(US) gallon versus Rear axle ratio as a line plot
plot(mtcars$mpg, mtcars$drat, main = "Miles/(US) gallon versus Rear axle ratio",
xlab = "Miles/(US) gallon", ylab = "Rear axle ratio")
# Change the visualization to a scatter plot
plot(mtcars$mpg, mtcars$drat, main = "Miles/(US) gallon versus Rear axle ratio (Scatter Plot)",
xlab = "Miles/(US) gallon", ylab = "Rear axle ratio", type = "p")
