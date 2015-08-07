# read.R read data
source('read.R')

gap <- as.numeric(data$Global_active_power)
grp <- as.numeric(data$Global_reactive_power)
sub1 <- as.numeric(data$Sub_metering_1)
sub2 <- as.numeric(data$Sub_metering_2)
sub3 <- as.numeric(data$Sub_metering_3)
lab <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
vol <- data$Voltage
lim <- c(0, 0.5)

png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))

plot(data$completetime,gap, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")


plot(data$completetime, vol, type = "l", ylab = "Voltage", xlab = "datetime")


plot(data$completetime, sub1, type = "l", xlab = "", ylab = "Energy sub metering")
points(data$completetime, sub2, type = "l", xlab = "", ylab = "Energy sub metering", col = "red")
points(data$completetime, sub3, type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = lab)


plot(data$completetime, grp, type = "l", xlab = "datetime",  ylab = "Global_reactive_power", ylim = lim)

dev.off()
