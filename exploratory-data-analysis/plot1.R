generatePlot1 <- function()
{
    setwd("C:/data_science/exploratory-data-analysis");
    dataFile <- "household_power_consumption.txt";
    dataSubSet <- data[data$Date %in% c("1/2/2007","2/2/2007") ,];
    globalActivePower <- as.numeric(dataSubSet$Global_active_power);
    png("plot1.png", width=500, height=500);
    hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)");
    dev.off();
}