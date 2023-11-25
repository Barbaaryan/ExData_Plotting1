filePath<-'household_power_consumption.txt'
data<-read.table(filePath,header=T,sep=';')
reqData<-data[data$Date %in% c('1/2/2007','2/2/2007'),]
png('plot2.png',width=480,height=480)
plot(strptime(paste(reqData$Date,reqData$Time,sep=' '),'%d/%m/%Y %H:%M:%S'),as.numeric(reqData$Global_active_power),type='l',xlab='',ylab='Global Active Power (kilowatts)')
dev.off()