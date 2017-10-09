## Plot 3
#



## Load data
#
dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data_subset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(data_subset$Date, data_subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
sub_meetering_1 <- as.numeric(data_subset$Sub_metering_1)
sub_meetering_2 <- as.numeric(data_subset$Sub_metering_2)
sub_meetering_3 <- as.numeric(data_subset$Sub_metering_3)

## Draw to Save
#

png("plot3.png", width=480, height=480)
plot(datetime, sub_meetering_1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, sub_meetering_2, type="l", col="red")
lines(datetime, sub_meetering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()