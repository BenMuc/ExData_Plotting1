data <- read.csv(".\\household_power_consumption.txt", header = TRUE, sep =";")
data$DateTime = paste(as.character(data$Date), data$Time)
data2 <- data[which(data$Date == '1/2/2007' | data$Date == '2/2/2007'),]
data2$DateTime <- strptime(data2$DateTime, "%d/%m/%Y %H:%M")


GAP <- as.numeric(as.character(data2$Global_active_power))
png("plot2.png", width = 480, height = 480)
plot(data2$DateTime, GAP, ylab="Global Active Power (kilowatt)", xlab = "", type="line")
dev.off()
