plot1 <- function() {
  
  # read data
  power_data<-read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
  data_used<-power_data[power_data$Date=="1/2/2007" | power_data$Date=="2/2/2007", ]
  
  # using sqldf brings similar result
  # data_used<-sqldf('select * from power_data where Date=="1/2/2007" OR Date=="2/2/2007"')
  
  # Convert date and time
  date_time<-paste(data_used$Date, data_used$Time)
  date_time_converted<-strptime(date_time, "%d/%m/%Y %H:%M:%S")
  
  # Plot 1
  png("plot1.png",width=4,height=4,units="in",res=480)
  hist(data_used$Global_active_power, main = "Global Active Power", 
       xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red", 
       font = 1, cex.lab=0.5, cex.main=0.75, cex.axis=0.5)
  dev.off()
  
  # Clean variables
  rm(list=ls())
}
