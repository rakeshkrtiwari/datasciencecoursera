generatePlot2 <- function()
{
    setwd("C:/data_science/exploratory-data-analysis");
    dataFile <- "household_power_consumption.txt";
    data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
    dataSubSet <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

    datetime <- strptime(paste(dataSubSet$Date, dataSubSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
    globalActivePower <- as.numeric(dataSubSet$Global_active_power)
    png("plot2.png", width=500, height=500)
    plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
    dev.off()
}
