
file <- "household_power_consumption.txt"
data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datedata <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot2 <- as.numeric(subData$Global_active_power)
png("plot2.png", width=480, height=480)
dev.off()
dev.off()
plot(datedata, plot2, type="l", xlab="", ylab="Global Active Power (kilowatts)")
