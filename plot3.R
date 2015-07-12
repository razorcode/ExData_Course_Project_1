plot3 <- function() {
  
  # read data
  power_data<-read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
  data_used<-power_data[power_data$Date=="1/2/2007" | power_data$Date=="2/2/2007", ]
  
  # using sqldf brings similar result
  # data_used<-sqldf('select * from power_data where Date=="1/2/2007" OR Date=="2/2/2007"')
  
  # Convert date and time
  date_time<-paste(data_used$Date, data_used$Time)
  date_time_converted<-strptime(date_time, "%d/%m/%Y %H:%M:%S")
  
  # Plot 3
  png("plot3.png",width=4,height=4,units="in",res=480)
  
  # Sub 1
  plot(date_time_converted, data_used$Sub_metering_1, type = "l",
       xlab = "", ylab = "Energy sub metering", col = "black", 
       cex.lab=0.5, cex.main=0.75, cex.axis=0.5, lwd=0.75)
  # Sub 2
  lines(date_time_converted, data_used$Sub_metering_2, type = "l",
       xlab = "", ylab = "Energy sub metering", col = "red", 
       cex.lab=0.5, cex.main=0.75, cex.axis=0.5, lwd=0.75)
  # Sub 3
  lines(date_time_converted, data_used$Sub_metering_3, type = "l",
        xlab = "", ylab = "Energy sub metering", col = "blue", 
        cex.lab=0.5, cex.main=0.75, cex.axis=0.5, lwd=0.75)
  # Add legends
  legend("topright", pch = "-", col = c("black", "red", "blue"), 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         cex = 0.5, lwd=c(1, 1, 1), lty=c(1, 1, 1))
  dev.off()
  
  # Clean variables
  rm(list=ls())
}
  