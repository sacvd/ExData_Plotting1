#read the data 
completedata <- read.table("household_power_consumption.txt", header=TRUE, stringsAsFactors=FALSE , sep=';',na.strings='?')

#filter by date
data <- completedata[completedata$Date =='1/2/2007' | completedata$Date =='2/2/2007',]

#convert 
#data$Date <- as.Date(data$Date,format ="%d/%m/%Y")
#data$Time<- strptime(data$Time,format="%H:%M:%S") 
data$completetime <-strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")





