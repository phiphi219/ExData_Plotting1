--plot4--
  png("Plot4.png", width = 480, height=480, type="window")
  par(mfrow=c(2,2))
with(data_use,{
  plot(data_use$Time,data_use$Global_active_power,type="l",xlab = "",ylab="Global Active Power")
  plot(data_use$Time,data_use$Voltage,type="l",xlab = "datetime",ylab="Voltage")
  with(data_use,plot(data_use$Time,data_use$Sub_metering_1,type="n",xlab = "",ylab="Energy sub metering"))
  lines(data_use$Time,data_use$Sub_metering_1,col="black")
  lines(data_use$Time,data_use$Sub_metering_2,col="red")
  lines(data_use$Time,data_use$Sub_metering_3,col="blue")
  legend("topright",lty = 1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty = "n")
  plot(data_use$Time,data_use$Global_reactive_power,type="l",xlab = "datetime",ylab="Global Reactive Power")
})
dev.off()