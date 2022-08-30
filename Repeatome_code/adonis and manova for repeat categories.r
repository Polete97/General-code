library(readr)
analysisR <- read_csv("C:/Users/Jaume/Dropbox/My PC (DESKTOP-JAUME)/Documents/Pol/Senecio/Repeatome/Individual/analysisR.csv")

namesR <- analysisR[,-1]
rownames(namesR) <- analysisR[,1] #Assigning row names from 1st column 

analysisR[,-1] <- NULL #Removing the first column

Ty3<-analysisR$`Ty3/gypsy`
Ty1<-analysisR$`Ty1/copia`
transp<-analysisR$`DNA transp.`
para<-analysisR$Pararetrovirus
LTR<-analysisR$LTR
rDNA<-analysisR$rDNA
sat<-analysisR$Satellite
plast<-analysisR$Plastid
unclas<-analysisR$Unclass
single<-analysisR$Single
small<-analysisR$`<0.01`
ploidy<-analysisR$ploidy


library(vegan)
library(ggplot2)
library(grid)

adonis(cbind(Ty3,Ty1,transp,para,LTR,rDNA,sat,plast,unclas,single,small)~as.factor(ploidy),method = "euclidian",permutations = 9999)
adonis(Ty3+Ty1+transp+para+LTR+rDNA+sat+plast+unclas+single+small~as.factor(ploidy),method = "euclidian",permutations = 9999)
adonis(Ty3~as.factor(ploidy),method = "euclidian",permutations = 9999)
adonis(Ty1~as.factor(ploidy),method = "euclidian",permutations = 9999)
adonis(transp~as.factor(ploidy),method = "euclidian",permutations = 9999)
adonis(para~as.factor(ploidy),method = "euclidian",permutations = 9999)
adonis(LTR~as.factor(ploidy),method = "euclidian",permutations = 9999)
adonis(rDNA~as.factor(ploidy),method = "euclidian",permutations = 9999)
adonis(sat~as.factor(ploidy),method = "euclidian",permutations = 9999)
adonis(plast~as.factor(ploidy),method = "euclidian",permutations = 9999)
adonis(unclas~as.factor(ploidy),method = "euclidian",permutations = 9999)
adonis(single~as.factor(ploidy),method = "euclidian",permutations = 9999)
adonis(small~as.factor(ploidy),method = "euclidian",permutations = 9999)

boxplot(single~as.factor(ploidy))
boxplot(Ty3~as.factor(ploidy))
boxplot(Ty1~as.factor(ploidy))

library(coin)
independence_test(cbind(Ty3,Ty1,transp,para,LTR,rDNA,sat,plast,unclas,single,small)~as.factor(ploidy)) 
