# read.R read data
source('read.R')

gap <- as.numeric(data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(data$completetime,gap, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()