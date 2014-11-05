# This R script generates the third plot, named plot3.png.
# This script is called by process_data.R and is not intended
# to be executed independently.

png(file = "plots/plot3.png", width = 480, height = 480)
plot(p$Time, p$Sub_metering_1, type="l",
     xlab = "",
     ylab = "Energy sub metering")
lines(p$Time, p$Sub_metering_2, col="red")
lines(p$Time, p$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lwd=1, 
       col=c("black", "red", "blue"))
dev.off()