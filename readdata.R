readdata <- function() {
  
  # read data
  power_data<-read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
  data_used<-power_data[power_data$Date=="1/2/2007" | power_data$Date=="2/2/2007", ]
  
  # using sqldf brings similar result
  # data_used<-sqldf('select * from power_data where Date=="1/2/2007" OR Date=="2/2/2007"')
  
  # Convert date and time
  date_time<-paste(data_used$Date, data_used$Time)
  date_time_converted<-strptime(date_time, "%d/%m/%Y %H:%M:%S")
}