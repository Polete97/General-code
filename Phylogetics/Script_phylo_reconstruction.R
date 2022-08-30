



setwd("C:/Users/Jaume/Nextcloud/Documents/Pol/Phoradendron/Repeat explorer/heterogenity/Reconstruction") #macbook

library(ape)
library(geiger)
library(phytools)
library(nlme)
library(evomap)


install.packages("evomap")###########################

#data<-read.table("GS_pre_update.txt", header = T,sep = "\t",row.names=1)


#GS<-read.csv("lista.csv",row.names = 1) #save excel as .csv with a column for the species (names or number) and column for your data


#GS<-read.csv("lista2.csv",header = T, sep = ";") 

#GS1C<-setNames(GS$min,rownames(GS$Familia)) #convert into a data frame





tree<-read.tree("Phorad_cloro.tre") #cronogram

tree
tips<-tree$tip.label
tips
write.table(tips, file = "tips.txt")
write.csv(tips, file = "tips.csv")


library(readr)
data<-Values <- read.csv("Values.csv", row.names = 1)



obj<-name.check(tree, data)
obj

pruned.tree<-drop.tip(tree,obj$tree_not_data)
pruned.tree
name.check(pruned.tree, data)
write.tree(pruned.tree, file = "Phorad_prunedGS.tre")

tips_pruned<-pruned.tree$tip.label
#data1<-as.data.frame(treedata(tree,data,sort=TRUE)$data)

#Ancestral GS reconstruction

cvalues44<-setNames(data$hetero44, rownames(data))
cvalues44

cvalues6<-setNames(data$hetero6, rownames(data))
cvalues6

cvalues136<-setNames(data$hetero136, rownames(data))
cvalues136

cvalues16<-setNames(data$hetero16, rownames(data))
cvalues16

cvalues38<-setNames(data$hetero38, rownames(data))
cvalues38

cvalues2<-setNames(data$hetero2, rownames(data))
cvalues2

cvalues48<-setNames(data$hetero48, rownames(data))
cvalues48

par(mfrow = c(1, 1))
pruned.tree<-read.tree("Phorad_prunedGS.tre") #cronogram
plot(pruned.tree)
nodelabels()



fit44<-fastAnc(pruned.tree, cvalues44, vars = TRUE, CI = TRUE)
fit44
write.csv(fit44$ace, file = "Ace44.csv")
write.csv(fit44$var, file = "var44.csv")
write.csv(fit44$CI95, file = "CI44.csv")

fit6<-fastAnc(pruned.tree, cvalues6, vars = TRUE, CI = TRUE)
fit6
write.csv(fit6$ace, file = "Ace6.csv")
write.csv(fit6$var, file = "var6.csv")
write.csv(fit6$CI95, file = "CI6.csv")


fit16<-fastAnc(pruned.tree, cvalues16, vars = TRUE, CI = TRUE)
fit16
write.csv(fit16$ace, file = "Ace16.csv")
write.csv(fit16$var, file = "var16.csv")
write.csv(fit16$CI95, file = "CI16.csv")


fit136<-fastAnc(pruned.tree, cvalues136, vars = TRUE, CI = TRUE)
fit136
write.csv(fit136$ace, file = "Ace136.csv")
write.csv(fit136$var, file = "var136.csv")
write.csv(fit136$CI95, file = "CI136.csv")


fit38<-fastAnc(pruned.tree, cvalues38, vars = TRUE, CI = TRUE)
fit38
write.csv(fit38$ace, file = "Ace38.csv")
write.csv(fit38$var, file = "var38.csv")
write.csv(fit38$CI95, file = "CI38.csv")

fit2<-fastAnc(pruned.tree, cvalues2, vars = TRUE, CI = TRUE)
fit2
write.csv(fit2$ace, file = "Ace2.csv")
write.csv(fit2$var, file = "var2.csv")
write.csv(fit2$CI95, file = "CI2.csv")


fit48<-fastAnc(pruned.tree, cvalues48, vars = TRUE, CI = TRUE)
fit48
write.csv(fit48$ace, file = "Ace48.csv")
write.csv(fit48$var, file = "var48.csv")
write.csv(fit48$CI95, file = "CI48.csv")

GS<-data$GS


obj44<-contMap(pruned.tree, cvalues44, plot = FALSE)
obj44$cols[]<-rev(rainbow(1001, start = 0, end = 0.75))
plot(obj44, type = "phylogram", tip.label = FALSE, res = 1000, lwd = 3, outline = FALSE, legend = 0.4*max(nodeHeights(pruned.tree)))

obj136<-contMap(pruned.tree, cvalues136, plot = FALSE)
obj136$cols[]<-rev(rainbow(1001, start = 0, end = 0.75))
plot(obj136, type = "phylogram", tip.label = FALSE, res = 1000, lwd = 3, outline = FALSE, legend = 0.4*max(nodeHeights(pruned.tree)))

obj16<-contMap(pruned.tree, cvalues16, plot = FALSE)
obj16$cols[]<-rev(rainbow(1001, start = 0, end = 0.75))
plot(obj16, type = "phylogram", tip.label = FALSE, res = 1000, lwd = 3, outline = FALSE, legend = 0.4*max(nodeHeights(pruned.tree)))

obj6<-contMap(pruned.tree, cvalues6, plot = FALSE)
obj6$cols[]<-rev(rainbow(1001, start = 0, end = 0.75))
plot(obj6, type = "phylogram", tip.label = FALSE, res = 1000, lwd = 3, outline = FALSE, legend = 0.4*max(nodeHeights(pruned.tree)))

obj38<-contMap(pruned.tree, cvalues38, plot = FALSE)
obj38$cols[]<-rev(rainbow(1001, start = 0, end = 0.75))
plot(obj38, type = "phylogram", tip.label = FALSE, res = 1000, lwd = 3, outline = FALSE, legend = 0.4*max(nodeHeights(pruned.tree)))

par(mfrow = c(1, 1))

obj2<-contMap(pruned.tree, cvalues2, plot = FALSE)
obj2$cols[]<-rev(rainbow(1001, start = 0, end = 0.75))
plot(obj2, type = "phylogram", tip.label = FALSE, res = 1000, lwd = 3, outline = FALSE, legend = 0.4*max(nodeHeights(pruned.tree)))



obj48<-contMap(pruned.tree, cvalues48, plot = FALSE)
obj48$cols[]<-rev(rainbow(1001, start = 0, end = 0.75))
plot(obj48, type = "phylogram", tip.label = FALSE, res = 1000, lwd = 3, outline = FALSE, legend = 0.4*max(nodeHeights(pruned.tree)))



plot(obj, type = "fan", tip.label = FALSE, res = 1000, lwd = 1, outline = FALSE, fsize=0.2, legend = 0.4*max(nodeHeights(pruned.tree)))
plot(obj, type = "phylogram", tip.label = FALSE, res = 1000, lwd = 1, outline = FALSE, legend = 0.4*max(nodeHeights(pruned.tree)))



#dupicate node labels and save tree

pruned.tree$node.label<-((length(pruned.tree$tip)+1:(length(pruned.tree$tip)*2)-1))

plot(pruned.tree, show.tip.label = TRUE, show.node.label = TRUE)

write.tree(pruned.tree, file = "duplica_node.tre")


cvalues2<-setNames(data$hetero, rownames(data))
cvalues2

plotTree.barplot(pruned.tree,cvalues2, args.barplot=list(beside=TRUE,xlim=c(0,160),legend.text= T,space=c(0,2)))

plotTree.barplot(pruned.tree,cvalues2)
par(mfrow = c(1, 1))

plotTree.wBars(pruned.tree, cvalues2/100, type = "phylogram", lwd = 0.5, scale = 1, col = "black", border = 1, tip.labels = T, fsize=0.3)





GSmin<-setNames(data$min,rownames(data))
GSmin

GSmax<-setNames(data$max,rownames(data))


tree<-read.tree("test.tree")
tree<-treedata(tree,data,sort=T,warnings=T)$phy




tips<-tree$tip.label
tips
write.table(tips, file = "tips.txt")
write.csv(tips, file = "tips.csv")



data<-as.data.frame(treedata(tree,data,sort=TRUE)$data)
plot(tree, type = "fan", cex = 0.5)
write.tree(tree, file = "ang_family.tre")



plotTree.wBars(tree, GSmin, type = "fan", lwd = 0.5, scale = 3, col = "black", border = 1, tip.labels = T, fsize=0.2)

plotTree.wBars(tree, 0.6*GSmax, type = "fan", lwd = 0.5, scale = 3, col = "black", border = 1, tip.labels = T, fsize=0.2)

plotTr

plotTree.barplot(tree,GS,args.barplot=list(beside=TRUE,xlim=c(0,1),legend.text= F,space=c(0,1.2)))


plotTree.barplot(tree,GS,args.barplot=list(beside=TRUE,xlim=c(0,160),legend.text= F,space=c(0,1.2)))









plotTree.wBars(tree1, data2, type = "fan", lwd = 1, scale = 3, col = "blue", border = 1, tip.labels = F)

plotTree.wBars(tree1, 0.3*data3, type = "fan", lwd = 1, scale = 3, col = "red", border = 10, tip.labels = F)

plotTree.barplot(tree1, data,args.barplot = list(beside=TRUE,xlim=c(0,100)))



























####post update

data<-read.table("GS_post_update.txt", header = T,sep = "\t",row.names=1)
tree<-read.tree("Phytophylo.tre")
tree<-treedata(tree,data,sort=T,warnings=T)$phy
data<-as.data.frame(treedata(tree,data,sort=TRUE)$data)
plot(tree)
write.tree(tree, file = "ang_post_family_andrew.tre")

tree1<-read.tree("ang_post_family_andrew.tre")
tree1

data1<-setNames(data$numersp,rownames(data))
data1

data1<-setNames(data$MeanC,rownames(data))
data1

data2<-setNames(data$Cmin,rownames(data))
data2

data3<-setNames(data$Cmax,rownames(data))
data3

jaume<- cbind(tree1$tip.label, data1)
jaume #link data to tree tips

fit<-fastAnc(tree1,data1,vars=TRUE,CI=TRUE)
obj<-contMap(tree1,data1,res=1000,plot=FALSE)
obj$cols[]<-rev(rainbow(1001,start=0, end=0.75)) 
plot(obj,type="fan", res=1000,lwd=1,fsize=c(0.7,0.7),outline=FALSE,legend=0.2*max(nodeHeights(tree1)))

#fsize c(x,y) x=tiplabels and y=legend
#outline=FALSE No black lines framing the colour ones
#type= "phylogram" (the default), "cladogram", "fan", "unrooted", "radial"
#show.tip.label=TRUE/FALSE



plotTree.wBars(tree1, data1, type = "fan", lwd = 1, scale = 3, col = "red", border = 10, tip.labels = F)

plotTree.wBars(tree1, data2, type = "fan", lwd = 1, scale = 3, col = "blue", border = 0, tip.labels = F)

plotTree.wBars(tree1, 0.3*data3, type = "fan", lwd = 1, scale = 3, col = "red", border = 0, tip.labels = F)

plotTree.barplot(tree1,data, args.barplot = list(beside=TRUE,xlim=c(0,160), space = c(0,1.2), border = NULL))

##########################

data<-read.table("GS_post_update_minmax.txt", header = T,sep = "\t",row.names=1)
tree<-read.tree("Phytophylo.tre")
tree<-treedata(tree,data,sort=T,warnings=T)$phy
data<-as.data.frame(treedata(tree,data,sort=TRUE)$data)
plot(tree1, type = "fan", cex = 0.5)
write.tree(tree, file = "ang_family.tre")

tree1<-read.tree("ang_family.tre")
tree1

data1<-setNames(data$MeanC,rownames(data))
data1

data2<-setNames(data$Cmin,rownames(data))
data2

data3<-setNames(data$Cmax,rownames(data))
data3

#######################################
data<-read.table("GS_post_luis.txt", header = T,sep = "\t", row.names = 1)
tree<-read.tree("Phytophylo.tre")
tree<-treedata(tree,data,sort=T,warnings=T)$phy
data<-as.data.frame(treedata(tree,data,sort=TRUE)$data)
plot(tree, type = "fan", cex = 0.5)
write.tree(tree, file = "ang_family.tre")

tree1<-read.tree("ang_family.tre")
tree1

data1<-setNames(data$numbergen,rownames(data))
data2<-setNames(data$numersp,rownames(data))
fit<-fastAnc(tree1,data2,vars = TRUE, CI= TRUE)
obj<-contMap(tree1, data2,plot = FALSE)
plot(obj, type = "fan", show.tip.label =TRUE, lwd=2, fsize=c(0.7,0.7),outline = FALSE, legend=0.2*max(nodeHeights(tree1)))
plot(obj)
data1

dotTree(tree1, 1000*data2, standardize = TRUE, type = "phylogram", tip.labels = F, cex=1)

plotTree.wBars(tree1, 0.3*data1, type = "fan", lwd = 1, scale = 3, col = "grey", border = 1, tip.labels = F)

plotTree.wBars(tree1, 0.002*data2, type = "fan", lwd = 1, scale = 3, col = "grey", border = 1, tip.labels = F)



##########################
