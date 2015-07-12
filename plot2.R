plot2 <- function() {
  # Plot 2
  
  png("plot2.png",width=4,height=4,units="in",res=480)
  plot(date_time_converted, data_used$Global_active_power, type = "l",
       xlab = "", ylab = "Global Active Power (kilowatts)", col = "black", 
       font = 1, cex.lab=0.5, cex.main=0.75, cex.axis=0.5, lwd=0.75)
  dev.off()

}