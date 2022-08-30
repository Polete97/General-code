

require(pez)
require(ape)


setwd("C:/Users/Jaume/Nextcloud/Documents/Pol/Phoradendron/Repeat explorer/heterogenity/Reconstruction") #macbook

tree<-read.tree("Phorad_cloro.tre") #cronogram

tree
tips<-tree$tip.label
tips
write.table(tips, file = "tips.txt")
write.csv(tips, file = "tips.csv")


library(readr)
library(phyr)
library(ape)
library(geiger)
library(phytools)
library(nlme)
library(evomap)
data<-Values <- read.csv("Values.csv", row.names = 1)



obj<-name.check(tree, data)
obj

pruned.tree<-drop.tip(tree,obj$tree_not_data)
pruned.tree
tips<-pruned.tree$tip.label


GS<-data$GS
hetero136<-data$hetero136


GS <- (GS - min(GS))/(max(GS)-min(GS))
hetero136 <- (hetero136 - min(hetero136))/(max(hetero136)-min(hetero136))
phylo_data136<-as.data.frame(GS, row.names = rownames(data))
phylo_data136$hetero<-hetero136



pglmm_compare( hetero136 ~ GS , family = "gaussian", phy = pruned.tree, data=phylo_data136)

summary(glm(hetero136 ~ GS, data = phylo_data136, family = "gaussian"))


######
hetero6<-data$hetero6


GS <- (GS - min(GS))/(max(GS)-min(GS))
hetero6 <- (hetero6 - min(hetero6))/(max(hetero6)-min(hetero6))
phylo_data6<-as.data.frame(GS, row.names = rownames(data))
phylo_data6$hetero<-hetero6



pglmm_compare( hetero6 ~ GS , family = "gaussian", phy = pruned.tree, data=phylo_data6)

summary(glm(hetero6 ~ GS, data = phylo_data6, family = "gaussian"))

######
hetero16<-data$hetero16


GS <- (GS - min(GS))/(max(GS)-min(GS))
hetero16 <- (hetero16 - min(hetero16))/(max(hetero16)-min(hetero16))
phylo_data16<-as.data.frame(GS, row.names = rownames(data))
phylo_data16$hetero<-hetero16



pglmm_compare( hetero16 ~ GS , family = "gaussian", phy = pruned.tree, data=phylo_data16)

summary(glm(hetero16 ~ GS, data = phylo_data16, family = "gaussian"))

######
hetero44<-data$hetero44


GS <- (GS - min(GS))/(max(GS)-min(GS))
hetero44 <- (hetero44 - min(hetero44))/(max(hetero44)-min(hetero44))
phylo_data44<-as.data.frame(GS, row.names = rownames(data))
phylo_data44$hetero<-hetero44



pglmm_compare( hetero44 ~ GS , family = "gaussian", phy = pruned.tree, data=phylo_data44)

summary(glm(hetero44 ~ GS, data = phylo_data44, family = "gaussian"))


######
hetero48<-data$hetero48


GS <- (GS - min(GS))/(max(GS)-min(GS))
hetero48 <- (hetero48 - min(hetero48))/(max(hetero48)-min(hetero48))
phylo_data48<-as.data.frame(GS, row.names = rownames(data))
phylo_data48$hetero<-hetero48



pglmm_compare( hetero48 ~ GS , family = "gaussian", phy = pruned.tree, data=phylo_data48)

summary(glm(hetero48 ~ GS, data = phylo_data48, family = "gaussian"))

######
hetero2<-data$hetero2


GS <- (GS - min(GS))/(max(GS)-min(GS))
hetero2 <- (hetero2 - min(hetero2))/(max(hetero2)-min(hetero2))
phylo_data2<-as.data.frame(GS, row.names = rownames(data))
phylo_data2$hetero<-hetero2



pglmm_compare( hetero2 ~ GS , family = "gaussian", phy = pruned.tree, data=phylo_data2)

summary(glm(hetero2 ~ GS, data = phylo_data2, family = "gaussian"))

######
hetero38<-data$hetero38


GS <- (GS - min(GS))/(max(GS)-min(GS))
hetero38 <- (hetero38 - min(hetero38))/(max(hetero38)-min(hetero38))
phylo_data38<-as.data.frame(GS, row.names = rownames(data))
phylo_data38$hetero<-hetero38



pglmm_compare( hetero38 ~ GS , family = "gaussian", phy = pruned.tree, data=phylo_data38)

summary(glm(hetero38 ~ GS, data = phylo_data38, family = "gaussian"))



################################phylosignal

library(phylosignal)
library(adephylo)
library(ape)
library(phylobase)

p4d <- phylo4d(pruned.tree, phylo_data2)
p4d <- phylo4d(pruned.tree, phylo_data6)
p4d <- phylo4d(pruned.tree, phylo_data16)
p4d <- phylo4d(pruned.tree, phylo_data38)
p4d <- phylo4d(pruned.tree, phylo_data44)
p4d <- phylo4d(pruned.tree, phylo_data48)
p4d <- phylo4d(pruned.tree, phylo_data136)
p4d <- phylo4d(pruned.tree, data)

barplot.phylo4d(p4d, tree.type = "phylo", tree.ladderize = TRUE)

phyloSignal(p4d = p4d, method = "all")
phylosim <- phyloSim(tree = pruned.tree, method = "all", nsim = 100, reps = 99)
plot(phylosim, stacked.methods = FALSE, quantiles =c(0.05, 0.95))
plot.phylosim(phylosim, what = "pval", stacked.methods = TRUE)

hetero2.crlg <- phyloCorrelogram(p4d, trait = "hetero2")
hetero6.crlg <- phyloCorrelogram(p4d, trait = "hetero6")
hetero16.crlg <- phyloCorrelogram(p4d, trait = "hetero16")
hetero38.crlg <- phyloCorrelogram(p4d, trait = "hetero38")
hetero44.crlg <- phyloCorrelogram(p4d, trait = "hetero44")
hetero48.crlg <- phyloCorrelogram(p4d, trait = "hetero48")
hetero136.crlg <- phyloCorrelogram(p4d, trait = "hetero136")
bm.crlg <- phyloCorrelogram(p4d, trait = "GS")
random.crlg <- phyloCorrelogram(p4d, trait = "random")


plot(hetero2.crlg)
plot(hetero6.crlg)
plot(hetero16.crlg)
plot(hetero38.crlg)
plot(hetero44.crlg)
plot(hetero48.crlg)
plot(hetero136.crlg)
plot(random.crlg)
plot(bm.crlg)

carni.lipa <- lipaMoran(p4d,  reps = 99999)
carni.lipa.p4d <- lipaMoran(p4d, as.p4d = TRUE,  reps = 99999, alternative= "two-sided")

barplot.phylo4d(p4d, bar.col=(carni.lipa$p.value < 0.05) + 1, center = FALSE , scale = FALSE)

barplot.phylo4d(carni.lipa.p4d, bar.col = (carni.lipa$p.value < 0.05) + 1, center = TRUE, scale = TRUE)

