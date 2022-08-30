
library(tidyverse)
library(modelr)
library(readr)
df1 <- read_csv("Taula_filtrada.csv")

df1$P<-as.numeric(df1$P)
df1$N<-as.numeric(df1$N)
df1<-na.omit(df1)

plot(df$P)
plot(df$N)
plot(df$`1Cpg`)

df1<- subset(df1,`1Cpg`<200) 
plot(df1$`1Cpg`)


df1$GS_log<-log(df1$`1Cpg`)

#####MODEL TEST####

require(MASS)
df1$pg<-(df1$`1Cpg`)


qqp(df1$pg, "norm")

qqp(df1$pg, "lnorm")

gamma <- fitdistr(df1$pg, "gamma")
qqp(df1$pg, "gamma", shape = gamma$estimate[[1]], rate = gamma$estimate[[2]])





######Standarization######

df1$GS_st<-(df1$pg-mean(df1$pg))/sd(df1$pg)

df1$P_st<-(df1$P-mean(df1$P))/sd(df1$P)

df1$N_st<-(df1$N-mean(df1$N))/sd(df1$N)


plot(P_st~pg, data = df1)
plot(N_st~pg, data = df1)
plot(df1$pg)

######normal##
df1$GS_nor<-log(df1$`1Cpg`)

df1$P_nor<-log(as.numeric(df1$P))

df1$N_nor<-log(as.numeric(df1$N))

#####MODEL TEST####

require(MASS)

qqp(df1$GS_nor, "norm")

qqp(df1$GS_nor, "lnorm")

gamma <- fitdistr(df1$GS_nor, "gamma")
qqp(df1$GS_nor, "gamma", shape = gamma$estimate[[1]], rate = gamma$estimate[[2]])
###########

library(lme4)
mod_build2<-lmer(GS_nor~P_nor+N_nor+(1| Order), data = df1)
summary(mod_build2)
Anova(mod_build2)


######no normal##

library(MASS)

PQL <- glmmPQL(pg ~ P + N, ~1 | Order/Sp, family = gaussian(link = "log"),
               data = df1, verbose = FALSE)
summary(PQL)

##visualization##
library(ggplot2)
ggplot(df1, aes(GS_log, N)) + geom_point() + facet_grid(~ Order)

ggplot(df1, aes(GS_log, P)) + geom_point() + facet_grid(~ Order)



for (var in unique(df1$Order)) {
  dev.new()
  print( ggplot(df1[df1$Order==var,], aes(pg, N)) + geom_point() )
}


for (var in unique(df1$Order)) {
  dev.new()
  print( ggplot(df1[df1$Order==var,], aes(pg, P)) + geom_point() )
}
