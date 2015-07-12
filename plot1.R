plot1 <- function() {
  # Plot 1
  png("plot1.png",width=4,height=4,units="in",res=480)
  hist(data_used$Global_active_power, main = "Global Active Power", 
       xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red", 
       font = 1, cex.lab=0.5, cex.main=0.75, cex.axis=0.5)
  dev.off()
}
