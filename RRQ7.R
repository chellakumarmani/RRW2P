
revised_steps_everyday<-new_base_data%>%
                        group_by(date)%>%
                        summarise(nst=sum(steps))

hist(revised_steps_everyday$nst,main="Total Daily Steps(revised",xlab="Steps",ylab="Frequency",breaks=30)