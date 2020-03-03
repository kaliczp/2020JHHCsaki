
##Zala reszvizgyujtok ET elorejelzes
Zala_ET = read.csv2("Zala_reszviz_ET.csv",sep = ";", header=FALSE, dec=".")
##az elso 4 sor az elso idoszak a 4 tájra, stb.
##beta-redukalt eredmenyek!
ETdata <- t(Zala_ET)
ETdata <- ETdata[,-c(1,5,9)]
jpeg("Zala_ET.jpg",16,7,units="cm",res=1000,pointsize = 8)
par(mar=c(3,4.1,1.1,1.1))
boxplot(ETdata, #names=c(" ","2011-2040"," "," ","2041-2070"," "," ","2071-2100"," "),
        ylab="ET-change [%]",boxwex=0.5,
        ylim=c(-11,14), col= rep(c("#abdda4","#fdae61","#d7191c"),3),
        xaxt="n")
points(1:9,colMeans(ETdata),pch=8, lwd=0.5)
axis(1,at=c(2,5,8),c("2011-2040 vs. 1981-2010","2041-2070 vs. 1981-2010","2071-2100 vs. 1981-2010"), tick=F)
#axis(1, at=6.5,pos=-15 ,"vs. 1981-2010",tick=F)
axis(1,at=c(3.5,6.5),tck=1,lty="dotted",lab=F)
text(1:9, -11, rep(c("ZE","ZB","ZA"),3))
dev.off()

##Zala reszvizgyujtok R elorejelzes
Zala_R = read.csv2("Zala_reszviz_R.csv",sep = ";", header=FALSE, dec=".")
##az elso 4 sor az elso idoszak a 4 tájra, stb.
##beta-redukalt eredmenyek!
ZalaRdata <- t(Zala_R)
ZalaRdata <- ZalaRdata[,-c(1,5,9)]
jpeg("Zala_R.jpg",16,7,units="cm",res=1000,pointsize = 8)
par(mar=c(3,4.1,1.1,1.1))
boxplot(ZalaRdata, #names=c(" ","2011-2040"," "," ","2041-2070"," "," ","2071-2100"," "),
        ylab="R-change [%]",boxwex=0.5,
        ylim=c(-110,50), col= rep(c("#abdda4","#fdae61","#d7191c"),3),
        xaxt="n")
points(1:9,colMeans(ZalaRdata, na.rm=TRUE),pch=8, lwd=0.5)
axis(1,at=c(2,5,8),c("2011-2040 vs. 1981-2010","2041-2070 vs. 1981-2010","2071-2100 vs. 1981-2010"),
     tick=F)
#axis(1, at=6.5,pos=-15 ,"vs. 1981-2010",tick=F)
axis(1,at=c(3.5,6.5),tck=1,lty="dotted",lab=F)
text(1:9, -110, rep(c("ZE","ZB","ZA"),3))
dev.off()
