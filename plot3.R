--plot3--
  png("Plot3.png", width = 480, height=480, type="window")
with(data_use,plot(data_use$Time,data_use$Sub_metering_1,type="n",xlab = "",ylab="Energy sub metering"))
lines(data_use$Time,data_use$Sub_metering_1,col="black")
lines(data_use$Time,data_use$Sub_metering_2,col="red")
lines(data_use$Time,data_use$Sub_metering_3,col="blue")
par(mar=c(5.1,4.1,4.1,2.5))
legend("topright",lty = 1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

