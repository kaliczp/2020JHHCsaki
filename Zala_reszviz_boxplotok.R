
##Zala reszvizgyujtok ET elorejelzes
Zala_ET = read.csv2("Zala_reszviz_ET.csv",sep = ";", header=FALSE, dec=".")
##az elso 4 sor az elso idoszak a 4 tájra, stb.
##beta-redukalt eredmenyek!
jpeg("Zala_ET.jpg",16,7,units="cm",res=600,pointsize = 8)
par(mar=c(3,4.1,1.1,1.1))
boxplot(t(Zala_ET), #names=c(" ","2011-2040"," "," ","2041-2070"," "," ","2071-2100"," "),
        ylab="ET-change [%]",boxwex=0.5,
        ylim=c(-11,14), col= c("#2b83ba","#abdda4","#fdae61","#d7191c",
                               "#2b83ba","#abdda4","#fdae61","#d7191c",
                               "#2b83ba","#abdda4","#fdae61","#d7191c"),
        xaxt="n")
points(1:12,rowMeans(Zala_ET),pch=8, lwd=0.5)
axis(1,at=c(2.5,6.5,10.5),c("2011-2040 vs. 1981-2010","2041-2070 vs. 1981-2010","2071-2100 vs. 1981-2010"), tick=F)
#axis(1, at=6.5,pos=-15 ,"vs. 1981-2010",tick=F)
axis(1,at=c(4.5,8.5),tck=1,lty="dotted",lab=F)
text(1,-11,"ZL")     
text(2,-11,"ZE")
text(3,-11,"ZB")
text(4,-11,"ZA")     
text(5,-11,"ZL")     
text(6,-11,"ZE")
text(7,-11,"ZB")
text(8,-11,"ZA")
text(9,-11,"ZL")     
text(10,-11,"ZE")
text(11,-11,"ZB")
text(12,-11,"ZA") 
dev.off()

##Zala reszvizgyujtok R elorejelzes
Zala_R = read.csv2("Zala_reszviz_R.csv",sep = ";", header=FALSE, dec=".")
##az elso 4 sor az elso idoszak a 4 tájra, stb.
##beta-redukalt eredmenyek!
jpeg("Zala_R.jpg",16,7,units="cm",res=600,pointsize = 8)
par(mar=c(3,4.1,1.1,1.1))
boxplot(t(Zala_R), #names=c(" ","2011-2040"," "," ","2041-2070"," "," ","2071-2100"," "),
        ylab="R-change [%]",boxwex=0.5,
        ylim=c(-110,50), col= c("#2b83ba","#abdda4","#fdae61","#d7191c",
                               "#2b83ba","#abdda4","#fdae61","#d7191c",
                               "#2b83ba","#abdda4","#fdae61","#d7191c"),
        xaxt="n")
points(1:12,rowMeans(Zala_R),pch=8, lwd=0.5)
axis(1,at=c(2.5,6.5,10.5),c("2011-2040 vs. 1981-2010","2041-2070 vs. 1981-2010","2071-2100 vs. 1981-2010"),
     tick=F)
#axis(1, at=6.5,pos=-15 ,"vs. 1981-2010",tick=F)
axis(1,at=c(4.5,8.5),tck=1,lty="dotted",lab=F)
text(1,-110,"ZL")     
text(2,-110,"ZE")
text(3,-110,"ZB")
text(4,-110,"ZA")     
text(5,-110,"ZL")     
text(6,-110,"ZE")
text(7,-110,"ZB")
text(8,-110,"ZA")
text(9,-110,"ZL")     
text(10,-110,"ZE")
text(11,-110,"ZB")
text(12,-110,"ZA") 
dev.off()
