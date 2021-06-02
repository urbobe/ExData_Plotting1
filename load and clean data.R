########### Load clean data
########### For the plots see plot1.R in separate scripts

eldata <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

## modify date
eldata$Date <- as.Date(eldata$Date, "%d/%m/%Y")

## only be using data from the dates 2007-02-01 and 2007-02-02
eldata <- subset(eldata,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

## only use complete observations
eldata <- eldata[complete.cases(eldata),]

## join Date and Time column
dateTime <- paste(eldata$Date, eldata$Time)

## name the vector
dateTime <- setNames(dateTime, "DateTime")

## remove Date and Time column
eldata <- eldata[ ,!(names(eldata) %in% c("Date","Time"))]

## Add dateTime column
eldata <- cbind(dateTime, eldata)

## Format dateTime Column
eldata$dateTime <- as.POSIXct(dateTime)