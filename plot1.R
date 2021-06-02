# generate plot1
png(file="plot1.png",width=480,height=480)
hist(eldata$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")
dev.off()