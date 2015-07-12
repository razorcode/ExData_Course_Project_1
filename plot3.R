plot3 <- function() {
  # Plot 3
  
  png("plot3.png",width=4,height=4,units="in",res=480)
  plot(date_time_converted, data_used$Sub_metering_1, type = "l",
       xlab = "", ylab = "Energy sub metering", col = "black", 
       cex.lab=0.5, cex.main=0.75, cex.axis=0.5, lwd=0.75)
  lines(date_time_converted, data_used$Sub_metering_2, type = "l",
       xlab = "", ylab = "Energy sub metering", col = "red", 
       cex.lab=0.5, cex.main=0.75, cex.axis=0.5, lwd=0.75)
  lines(date_time_converted, data_used$Sub_metering_3, type = "l",
        xlab = "", ylab = "Energy sub metering", col = "blue", 
        cex.lab=0.5, cex.main=0.75, cex.axis=0.5, lwd=0.75)
  legend("topright", pch = "-", col = c("black", "red", "blue"), 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         cex = 0.5, lwd=c(1, 1, 1), lty=c(1, 1, 1))
  dev.off()
}
  