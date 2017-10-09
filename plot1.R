## Plot 1
#



## Load data
#
dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data_subset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
global_active_power <- as.numeric(data_subset$Global_active_power)

## Draw to Save
#
png("plot1.png", width=480, height=480)
hist(global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()