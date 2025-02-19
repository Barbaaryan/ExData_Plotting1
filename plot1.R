filePath<-'household_power_consumption.txt'
data<-read.table(filePath,header=T,sep=';')
reqData<-data[data$Date %in% c('1/2/2007','2/2/2007'),]
png('plot1.png',width=480,height=480)
hist(as.numeric(reqData$Global_active_power),col='red',main='Global Active Power',xlab='Global Active Power (kilowatts)',ylab='Frequency')
dev.off()