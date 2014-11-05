# This R script generates the second plot, named plot2.png.
# This script is called by process_data.R and is not intended
# to be executed independently.

png(file = "plot2.png", width = 480, height = 480)
plot(p$Time, p$Global_active_power, 
     type="l", 
     xlab="", 
     ylab="Global Active Power (kilowatts)")
dev.off()