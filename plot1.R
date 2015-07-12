data <- read.csv(".\\household_power_consumption.txt", header = TRUE, sep =";")
data2 <- data[which(data$Date == '1/2/2007' | data$Date == '2/2/2007'),]

GAP <- as.numeric(as.character(data2$Global_active_power))
png("plot1.png", width = 480, height = 480)
hist(GAP, col = "red", main="Global Active Power", xlab = "Global Active Power (kilowatt)", ylab="Frequency")
dev.off()
