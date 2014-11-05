# This R script generates the fourth plot, named plot4.png.
# This script is called by process_data.R and is not intended
# to be executed independently.

png(file = "plot4.png", width = 480, height = 480)
par(mfrow=c(2,2)) # Place the four subplots in a 2x2 grid

# Upper left plot: Global active power vs Time
plot(p$Time, p$Global_active_power,
     type="l",
     main="",
     xlab="",
     ylab="Global Active Power")

# Upper right plot: Voltage vs Time
plot(p$Time, p$Voltage,
     type="l",
     main="",
     xlab="datetime",
     ylab="Voltage")

# Lower left plot: Sub metering vs Time
plot(p$Time, p$Sub_metering_1,
     type="l",
     main="",
     xlab="",
     ylab="Energy sub metering")
lines(p$Time, p$Sub_metering_2, col="red")
lines(p$Time, p$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lwd=1,
       bty="n",
       col=c("black", "red", "blue"))

# Lower right plot: Global reactive power vs Time
plot(p$Time, p$Global_reactive_power, 
     type="l",
     main="",
     xlab="datetime",
     ylab="Global_reactive_power")

par(c(1,1))
dev.off()