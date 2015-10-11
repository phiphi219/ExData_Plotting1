--plot2--
par(mar=c(5.1,4.1,4.1,4.1))
with(data_use,plot(data_use$Time,data_use$Global_active_power,type="l",xlab = "",ylab="Global Active Power(kilowatts)"))
dev.copy(png,file="plot2.png")
dev.off()

