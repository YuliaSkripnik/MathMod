eddypro=read.csv("eddypro.csv",skip=1)[-1,c(1:69,70:77)]
eddypro=eddypro[,c(-32,-33,-37,-38,-63)]
eddypro$daytime=as.numeric(eddypro$daytime)
for(i in c(4,6:length(eddypro))){
eddypro[,i]=as.numeric(eddypro[,i])
}
eddypro[eddypro == 9999]=NA
cor.matrix=round(cor(eddypro[,c(-1,-2,-3)]),2)
eddypro[eddypro$daytime == "T",]
eddypro
eddypro=eddypro[2316:3803,]
eddypro
model1=lm(x_90~(x of set+)^13,data=eddypro)
anova(model1)  
model2=lm(x_90~()^5,data=eddypro)
anova(model2)
anova(model2,model1)
model5=lm(x~(y+z+w)^3,data=eddypro)
model6=lm(x~(y+z+w)^3-y:z-z:w,data=eddypro)
anova(model5)
eddy = read.csv("eddypro.csv", skip = 1)[-1, c("date", "time", "daytime", "co2_flux")] 
eddy$daytime = as.logical(eddy$daytime) 
eddy = subset(eddy, as.Date(date) >= as.Date("2013-07-01") & as.Date(date) <= as.Date("2013-07-31") & daytime == T) 
plot(as.Date(eddy$date), eddy$co2_flux) 
ggplot(eddy, aes(x = co2_flux, y = as.Date(date))) + geom_point()
