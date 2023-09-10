# Load the mtcars dataset
data(mtcars)
#9a
# Create a scatter plot of mpg versus drat
plot(mtcars$mpg, mtcars$drat,
     xlab = "Miles/(US) gallon",
     ylab = "Rear axle ratio",
     main = "Miles/(US) gallon vs Rear axle ratio")
#9b
# Create a scatter plot with customized point color and size
plot(mtcars$mpg, mtcars$drat,
     xlab = "Miles/(US) gallon",
     ylab = "Rear axle ratio",
     main = "Scatterplot: Miles/(US) gallon vs Rear axle ratio",
     col = "red", 
     pch = 16, 
     cex = 2)
