finaldata$Global_active_power<-as.numeric(finaldata$Global_active_power)
hist(finaldata$Global_active_power, col = "red",xlab = "Global Active Power (kilowatts)",main = "Global Active Power")
dev.copy(png, file = "plot1.png")
dev.off()
