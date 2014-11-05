# Check that data is present as a local text file.
# Download and unzip the dataset if necessary.

if (!file.exists("../data")) 
  dir.create("../data")

if (!file.exists("../data/household_power_consumption.txt")) {

  if (!file.exists("../data/household_power_consumption.zip")) {
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
                  destfile="../data/household_power_consumption.zip",
                  method="curl")
  }
  
  unzip("../data/household_power_consumption.zip", exdir="../data")
}


## Read data table

cachefile <- "../data/household_power_consumption.txt"
power <- read.table(cachefile, sep=";", header=T, na.strings="?")
p <- subset(power, Date == "1/2/2007" | Date == "2/2/2007")
rm(power)
p$Time <- strptime(paste(p$Date, ' ', p$Time), "%d/%m/%Y %H:%M:%S")
p$Date <- factor(p$Date)

## Create plots

source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")