

data<-read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")  
data$timetemp <- paste(data$Date, data$Time)  
data$Time <- strptime(data$timetemp, format = "%Y-%m-%d %H:%M:%S")  
data_use <- subset(data,Date >= "2007-02-01" & Date <= "2007-02-02")
par(mfrow=c(1,1))
hist(data_use$Global_active_power,col="red",xlab = "Global Active Power(kilowatts)",main="Global Active Power")
dev.copy(png,file="plot1.png")
dev.off()

