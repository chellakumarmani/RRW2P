##Processig of data for timeseries
timeseries<-basedata%>%
            group_by(interval)%>%
            na.omit()%>%
            summarise(avgst=mean(steps))
##Now its time to plot
library(ggplot2)  
ggplot(timeseries,aes(x=interval,y=avgst))+geom_line()