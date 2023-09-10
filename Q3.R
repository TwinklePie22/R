# A
class(state.x77)
s77 <- data.frame(state.x77)
class(s77)

# B
summary(s77)
cat("States having income less than 5000 =", nrow(s77[s77$Income < 5000,]), "\n")

# C
cat("States with highest income: ", row.names(s77[which.max(s77$Income),]), "\n")
cat("States with lowest income: ", row.names(s77[which.min(s77$Income),]), "\n")

# D
df <- data.frame(state.abb, state.area, state.division, state.region, row.names = rownames(s77))
colnames(df) <- substr(colnames(df), 1, 3)
new.df <- cbind(s77, df)

# E
new.df$div <- NULL
new.df <- new.df[, -c(4, 6, 7, 9, 10)]

# F
new.df$Illiteracy.Levels <- ifelse(new.df$Illiteracy >= 0 & new.df$Illiteracy < 1, "Low",
                                   ifelse(new.df$Illiteracy >= 1 & new.df$Illiteracy < 2, "Some", "High"))

x <- subset(new.df, state.region == "West" & Illiteracy.Levels == "Low")
cat("State in the West with low illiteracy and highest income:", row.names(x[which.max(x$Income),]), "\n")
# g
#Rename the column "state.region" to show only the first 3 letters
colnames(state.x77)[colnames(state.x77) == "state.region"] <- "Reg"

# Print the modified data frame
head(state.x77)
