filePath<-'household_power_consumption.txt'
data<-read.table(filePath,header=T,sep=';')
reqData<-data[data$Date %in% c('1/2/2007','2/2/2007'),]
png('plot4.png',width=480,height=480)
par(mfrow=c(2,2))
plot(strptime(paste(reqData$Date,reqData$Time,sep=' '),'%d/%m/%Y %H:%M:%S'),as.numeric(reqData$Global_active_power),type='l',xlab='',ylab='Global Active Power',cex=0.2)
plot(strptime(paste(reqData$Date,reqData$Time,sep=' '),'%d/%m/%Y %H:%M:%S'),as.numeric(reqData$Voltage),type='l',xlab='datetime',ylab='Voltage')
plot(strptime(paste(reqData$Date,reqData$Time,sep=' '),'%d/%m/%Y %H:%M:%S'),as.numeric(reqData$Sub_metering_1),type='l',xlab='',ylab='Energy sub metering')
lines(strptime(paste(reqData$Date,reqData$Time,sep=' '),'%d/%m/%Y %H:%M:%S'),as.numeric(reqData$Sub_metering_2),type='l',col='red')
lines(strptime(paste(reqData$Date,reqData$Time,sep=' '),'%d/%m/%Y %H:%M:%S'),as.numeric(reqData$Sub_metering_3),type='l',col='blue')
legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty=1,lwd=2.5,col=c('black','red','blue'),bty='n')
plot(strptime(paste(reqData$Date,reqData$Time,sep=' '),'%d/%m/%Y %H:%M:%S'),as.numeric(reqData$Global_reactive_power),type='l',xlab='datetime',ylab='Global_reactive_power',)
dev.off()