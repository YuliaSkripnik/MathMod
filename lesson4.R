#общее описание данных.разведка
eddy=read.csv("eddy.csv",skip=1)
eddy=eddy[-1,]
write.csv(eddy,"eddy2.csv")
eddy2=read.csv("eddy2.csv")
summary(eddy2)
stat.desc(eddy2)
ggplot(eddy2,aes(h2o))+geom_histogram()
eddy2==-9999
eddy2[eddy2==-9999]=NA
fitdistr(x,"normal")
fitdistr(eddy2$h2o_strd,"normal")
x=na.exclude(eddy2$h2o_strg)
ks.test(x,pnorm,mean=y[1],sd=y[2])
y=fitdistr(x,"normal")$estimate