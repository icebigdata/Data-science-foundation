## Charts for DSFO_05_01 "Exploratory Graphs"

options(encoding = "UTF-8")

require("datasets")
#library(help=datasets)
data(women$height)  # Average Heights and Weights for American Women
hist(women$height)
# HISTOGRAM WITH OPTIONS
hist(women$height,
     freq = FALSE,  # Axis shows density, not frequency
     col = "light gray",  # Color for histogram
     main = "Average Heights and Weights for American Women.")

# SUPERIMPOSED KERNEL DENSITY ESTIMATES
lines(density(women$height), col = "blue", lwd = 5)
lines(density(women$height, adjust = 3), col = "darkgreen", lwd = 5)

max.temp <- c(22, 28, 25, 24, 23, 27,30)
barplot(max.temp,
        main = "Maximum Temperatures in a Week",
        xlab = "Degree Celsius",
        ylab = "Day",
        names.arg = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"),
        col = "darkred",
        horiz = TRUE)

