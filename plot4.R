finaldata$Global_reactive_power<-as.numeric(finaldata$Global_reactive_power)
finaldata$Voltage<-as.numeric(finaldata$Voltage)
par(mfrow = c(2, 2))
with(finaldata,{
    plot(contime,Global_active_power,col = "black",ylab = "Global Active Power", xlab ="" ,type = "l",xaxt="n")
    axis(side = 1,at = c(contime[1],contime[0.5*length(contime)],contime[length(contime)]), labels = c("Thu","Fri","Sat"))
    
    plot(contime,Voltage,col = "black",ylab = "Voltage", xlab ="datetime" ,type = "l",xaxt="n")
    axis(side = 1,at = c(contime[1],contime[0.5*length(contime)],contime[length(contime)]), labels = c("Thu","Fri","Sat"))
    
    plot(contime,Sub_metering_1,col = "black",ylab = "Energy sub metering", xlab ="" ,type = "l",xaxt="n")
    lines(contime,Sub_metering_2,col = "red",ylab = "Energy sub metering", xlab ="" ,type = "l",xaxt="n")
    lines(contime,Sub_metering_3,col = "blue",ylab = "Energy sub metering", xlab ="" ,type = "l",xaxt="n")
    axis(side = 1,at = c(contime[1],contime[0.5*length(contime)],contime[length(finaldata$contime)]), labels = c("Thu","Fri","Sat"))
    legend("topright",lty = c(1,1,1),col = c("black","red","blue" ), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),cex = 0.1, bty = "n")
    
    plot(contime,Global_reactive_power,col = "black",ylab = "Global_reactive_power", xlab ="datetime" ,type = "l",xaxt="n")
    axis(side = 1,at = c(contime[1],contime[0.5*length(contime)],contime[length(contime)]), labels = c("Thu","Fri","Sat"))
    
})

dev.copy(png, file = "plot4.png")
dev.off()
