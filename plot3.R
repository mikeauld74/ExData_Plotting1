

file <- "household_power_consumption.txt"
data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

datedata <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot3 <- as.numeric(subdata$Global_active_power)
sm1 <- as.numeric(subdata$Sub_metering_1)
sm2 <- as.numeric(subdata$Sub_metering_2)
sm3 <- as.numeric(subdata$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(datedata, sm1, type="l", ylab="Energy Submetering", xlab="")
lines(datedata, sm2, type="l", col="red")
lines(datedata, sm3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
