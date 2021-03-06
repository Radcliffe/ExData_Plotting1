# This R script generates the first plot, named plot1.png.
# This script is called by process_data.R and is not intended
# to be executed independently.

png(file = "plots/plot1.png", width = 480, height = 480)
hist(p$Global_active_power, 
     col="Red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()