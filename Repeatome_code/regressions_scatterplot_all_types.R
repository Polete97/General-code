df<-read.delim("clipboard")

library(ggplot2)

par(mfrow=c(2,3))

LINE<-ggplot(df, aes(x = GS, y = LINE)) +
  geom_point()+ theme_light()+
  geom_smooth(method=lm)
summary(lm(GS~LINE, data= df))

Satellite<-ggplot(df, aes(x = GS, y = Satellite)) +
  geom_point()+ theme_light()+
  geom_smooth(method=lm)
summary(lm(GS~Satellite, data= df))

rDNA<-ggplot(df, aes(x = GS, y = rDNA)) +
  geom_point()+ theme_light()+
  geom_smooth(method=lm)
summary(lm(GS~rDNA, data= df))

LTR<-ggplot(df, aes(x = GS, y = LTR)) +
  geom_point()+ theme_light()+
  geom_smooth(method=lm)
summary(lm(GS~LTR, data= df))

DNA.transp.<-ggplot(df, aes(x = GS, y = DNA.transp.)) +
  geom_point()+ theme_light()+
  geom_smooth(method=lm)
summary(lm(GS~DNA.transp., data= df))

Ty1.copia<-ggplot(df, aes(x = GS, y = Ty1.copia)) +
  geom_point()+ theme_light()+
  geom_smooth(method=lm)
summary(lm(GS~Ty1.copia, data= df))

Ty3.gypsy<-ggplot(df, aes(x = GS, y = Ty3.gypsy)) +
  geom_point()+ theme_light()+
  geom_smooth(method=lm)
summary(lm(GS~Ty3.gypsy, data= df))

small<-ggplot(df, aes(x = GS, y = X.0.01)) +
  geom_point()+ theme_light()+
  geom_smooth(method=lm)
summary(lm(GS~X.0.01, data= df))

Single<-ggplot(df, aes(x = GS, y = Single)) +
  geom_point()+ theme_light()+
  geom_smooth(method=lm)
summary(lm(GS~Single, data= df))

Unclass<-ggplot(df, aes(x = GS, y = Unclass)) +
  geom_point()+ theme_light()+
  geom_smooth(method=lm)
summary(lm(GS~Unclass, data= df))

library(devtools)
library(ggpubr)

library("cowplot")
plot_grid(LINE, Satellite, rDNA ,LTR,DNA.transp.,Ty1.copia,Ty3.gypsy,small, Unclass, Single, rremove("x.text"),  
          labels = c("A", "B", "C","D", "E", "F", "G","H","I","J"),
          ncol = 2, nrow = 5)
