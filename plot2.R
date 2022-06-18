
# Exploratory Data Analysis Course - Project 1

# Reading and preparing data

rawData <- "F:/Desktop/Coursera - Ciência de Dados/Johns Hopkins/Exploratory Data Analysis/household_power_consumption.txt"

data <- read.table(rawData, header = TRUE, sep = ";", dec = ".",na.strings = "?")

data <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]

# Adjusting Date and Time

Sys.setlocale("LC_TIME", "English")

date_converted <- as.Date(data[, 1], format = "%d/%m/%Y")

time_converted <- strptime(data[, 2], format = "%H:%M:%S")

time_axis <- as.POSIXct(paste(date_converted, data[, 2]))

# Plotting the graph

plot(time_axis, data[, 3], xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")

dev.off()

# References:
# https://rpubs.com/amagzari/ExplDataAnalysisProject1
# https://rpubs.com/gibrahim/162988
# https://rpubs.com/AndersonUyekita/course-project-1_exploratory-data-analysis
# https://rpubs.com/Dezwirey/155721