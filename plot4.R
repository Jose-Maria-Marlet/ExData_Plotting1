
# Exploratory Data Analysis Course - Project 1

# Reading and preparing data

rawData <- "F:/Desktop/Coursera - Ciência de Dados/Johns Hopkins/Exploratory Data Analysis/household_power_consumption.txt"

data <- read.table(rawData, header = TRUE, sep = ";", dec = ".",na.strings = "?")

data <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]

# Preparing the graphs

par(mfrow = c(2,2))

plot(time_axis, data[, 3], xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")

plot(time_axis, data[, 5], xlab = "datetime", ylab = "Voltage", type = "l")

plot(time_axis, data[, 7], xlab = "", ylab = "Energy sub metering", type = "l")

lines(time_axis, data[, 8], col = "red")

lines(time_axis, data[, 9], col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black","red","blue"), cex = 0.8, lty = 1 , bty = "n")

plot(time_axis, data[, 4], xlab = "datetime", ylab = "Global_reactive_power", type = "l")

dev.off()

# References:
# https://rpubs.com/amagzari/ExplDataAnalysisProject1
# https://rpubs.com/gibrahim/162988
# https://rpubs.com/AndersonUyekita/course-project-1_exploratory-data-analysis
# https://rpubs.com/Dezwirey/155721