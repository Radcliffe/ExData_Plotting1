png(file = "plot2.png", width = 504, height = 504)
plot(p$Time, p$Global_active_power, 
     type="l", 
     xlab="", 
     ylab="Global Active Power (kilowatts)")
dev.off()