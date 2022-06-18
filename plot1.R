
# Exploratory Data Analysis Course - Project 1

# Reading data

rawData <- "F:/Desktop/Coursera - Ciência de Dados/Johns Hopkins/Exploratory Data Analysis/household_power_consumption.txt"

data <- read.table(rawData, header = TRUE, sep = ";", dec = ".",na.strings = "?")

# Limiting the data to Feb. 1st, 2007 to Feb 2nd, 2007

dataSubSet <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]

# Plotting the histogram

hist(dataSubSet[, 3], col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()

# References:
# https://rpubs.com/amagzari/ExplDataAnalysisProject1
# https://rpubs.com/gibrahim/162988
# https://rpubs.com/AndersonUyekita/course-project-1_exploratory-data-analysis
# https://rpubs.com/Dezwirey/155721
