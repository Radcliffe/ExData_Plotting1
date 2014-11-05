png(file = "plot1.png", width = 504, height = 504)
hist(p$Global_active_power, 
     col="Red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()