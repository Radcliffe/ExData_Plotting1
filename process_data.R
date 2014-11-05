# This R script generates four plots using the data from the
# Electric Power Consumption dataset, which is part of the
# UC Irving Machine Language Repository. See the README.md
# file for more information.
#
# To run this script, type
#   source("process_data.R")
# at the R command prompt.
#
# This script runs four other scripts, which are assumed to
# exist in the current working directory. It creates four PNG 
# files named plot[1-4].png in the current working directory.
##############################################################

## Check that the dataset exists as a local text file.
## Download and unzip the dataset if necessary.

if (!file.exists("data")) 
  dir.create("data")

if (!file.exists("data/household_power_consumption.txt")) {

  if (!file.exists("data/household_power_consumption.zip")) {
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
                  destfile="data/household_power_consumption.zip",
                  method="curl")
  }
  
  unzip("data/household_power_consumption.zip", exdir="data")
}


## Read the data and select the observations from Feb 1 and 2, 2007

power <- read.table("data/household_power_consumption.txt", 
                    sep=";", 
                    header=T, 
                    na.strings="?")
p <- subset(power, Date == "1/2/2007" | Date == "2/2/2007")
rm(power)
file.remove("data/household_power_consumption.txt") #127 MB text file

## Convert Date and Time fields from strings to dates

p$Time <- strptime(paste(p$Date, ' ', p$Time), "%d/%m/%Y %H:%M:%S")
p$Date <- as.Date(p$Date, "%d/%m/%Y")

## Ensure that plots directory exists

if (!file.exists("plots")) 
  dir.create("plots")

## Create plots as PNG files

source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")