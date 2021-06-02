#generate plot2
png(file="plot2.png",width=480,height=480)
plot(eldata$Global_active_power~eldata$dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()