#PLOT 2
#Coursera: Exploratory Data Analysis
#Course Project 1
#Date: Aug 9, 2015

#PART ONE: Process the source txt file

#Read txt file into a table then prepare subset using dplyr package "filter" command
consumption <- read.table("household_power_consumption.txt", header=T, sep = ";", na.strings = "?", as.is = TRUE)
names(consumption)
head(consumption)
class(consumption$Date)
class(consumption$Time)
library (dplyr)
subset1 <- filter(consumption, Date == "1/2/2007")
subset2 <- filter(consumption, Date == "2/2/2007")
cons_sub <- rbind(subset1, subset2)
head(cons_sub)
str(cons_sub)


#Save the subsetted file into txt for use for plotting
write.table(cons_sub, file = "cons_sub.txt", sep = "\t", row.names = F)

#PART TWO: Convert Date and Time Variables to Date/Time Classes in Subsetted File

#Read the subsetted file into table
consumption1 <- read.table("cons_sub.txt", header=T, as.is=TRUE)
head(consumption1)
names(consumption1)
str(consumption1)
#Use Lubridate Package to Convert Date and Chron Package to Convert Time 
library(lubridate)
consumption1$Date <- dmy(consumption1$Date)
class(consumption1$Date)
library(chron)
consumption1$Time <- chron(times = consumption1$Time)
class(consumption1$Time)
consumption1$date_time <- as.POSIXct(paste(consumption1$Date, consumption1$Time), format = "%Y-%m-%d %H:%M:%S")
str(consumption1)

#PART THREE: Create Plot 2

#Plot 2
png(file = "Plot 2.png", width = 480, height = 480)
with(consumption1, plot(date_time, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))
dev.off()
