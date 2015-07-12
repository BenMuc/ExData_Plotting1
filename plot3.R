data <- read.csv(".\\household_power_consumption.txt", header = TRUE, sep =";")
data$DateTime = paste(as.character(data$Date), data$Time)
data2 <- data[which(data$Date == '1/2/2007' | data$Date == '2/2/2007'),]
data2$DateTime <- strptime(data2$DateTime, "%d/%m/%Y %H:%M")
GAP <- as.numeric(as.character(data2$Global_active_power))
SM1 <- as.numeric(as.character(data2$Sub_metering_1))
SM2 <- as.numeric(as.character(data2$Sub_metering_2))
SM3 <- as.numeric(as.character(data2$Sub_metering_3))


png("plot3.png", width = 480, height = 480)
plot(data2$DateTime, SM1, ylab="Energy sub metering", xlab = "", type="line")
lines(data2$DateTime, SM2, col="red")
lines(data2$DateTime, SM3, col="blue")
legend("topright", pch=1, col=c("black","red", "blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
