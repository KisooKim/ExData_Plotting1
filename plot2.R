## Plot 2
#



## Load data
#
dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data_subset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

global_active_power <- as.numeric(data_subset$Global_active_power)
datetime <- strptime(paste(data_subset$Date, data_subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

## Draw to Save
#
png("plot2.png", width=480, height=480)
plot(datetime, global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()