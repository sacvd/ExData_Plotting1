# read.R read data
source('read.R')

sub1 <- as.numeric(data$Sub_metering_1)
sub2 <- as.numeric(data$Sub_metering_2)
sub3 <- as.numeric(data$Sub_metering_3)
lab <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

png("plot3.png", width=480, height=480)

plot(data$completetime, sub1, type = "l", xlab = "", ylab = "Energy sub metering")
points(data$completetime, sub2, type = "l", xlab = "", ylab = "Energy sub metering", col = "red")
points(data$completetime, sub3, type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = lab)

dev.off()