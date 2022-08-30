x<- 5:8
names(x)<-letters[5:8]
x
z<-read.delim("clipboard")

library(readxl)
library(Rcpp)
barplot_tannensis <- read_excel("~/Pol/Tmesepteris/Repeat explorer/barplot_tannensis.xlsx")


library(ggplot2)
p=ggplot(data=z, aes(x=ind, y=Mb, fill=Annotation)) +
  geom_bar(stat="identity")
p + coord_flip()

library(ggplot2)
p=ggplot(data=z, aes(x=Species, y=z$X..., fill=Annotation)) +
  geom_bar(stat="identity")
p + coord_flip()


library(ggplot2)
p=ggplot(data=z, aes(x=species, y=z$prop, fill=Element)) +
  geom_bar(position="dodge",stat="identity")
p + coord_flip()+theme_classic()



z<-read.delim("clipboard")





z$colourt <- ifelse(z$Tannensis < 0, 'blue', 'green')

bp <- barplot(z$Tannensis, col = z$colourt, horiz = T)
mtext(side = ifelse(z$Tannensis < 2,2,2),
      text = z$X,
      las = 1,
      at = bp,
      line = 1)

z$colouro <- ifelse(z$Obliqua < 0, 'blue', 'green')

bp <- barplot(z$Obliqua, col = z$colouro, horiz = T)
mtext(side = ifelse(z$Obliqua < 2,2,2),
      text = z$X,
      las = 1,
      at = bp,
      line = 1)





ggplot(z, aes(x=Tannensis, y= X, fill=test)) + 
  facet_wrap(~ test, scales = "free_x") + 
  geom_col() + 
  coord_flip() +
  scale_y_continuous(expand = c(0, 0)) +
  theme(panel.spacing.x = unit(0, "mm"))


z<-read.delim("clipboard")
library(ggplot2)
p<-ggplot(z, aes(x=tan, y=obl,color=Final_annotation ))+geom_point(size=3, shape=18)
p + theme_classic()+ geom_abline(intercept = 0, slope = 2.01)+
  scale_color_manual(values=c('#999999','#E69F00', '#56B4E9',"pink","red", "black", "palegreen"))

sat<-z[ which(z$Final_annotation =='Satellite'),]
DNA_transposon<-z[ which(z$Final_annotation =='DNA_transposon'),]
LINE<-z[ which(z$Final_annotation =='LINE'),]
LTR<-z[ which(z$Final_annotation =='LTR'),]
Copia<-z[ which(z$Final_annotation =='Copia'),]
Gypsy<-z[ which(z$Final_annotation =='Gypsy'),]

all_class<-rbind(sat,DNA_transposon,LINE,Copia,Gypsy)

class<-lm(all_class$obl~0 +all_class$tan)
summary(class)
plot(all_class$obl~0 +all_class$tan)
abline(lm(all_class$obl~0 +all_class$tan))

zz<-lm(z$obl~0 +z$tan)
summary(zz)
plot(z$obl~0 +z$tan)
abline(lm(z$obl~0 +z$tan))

sat_lm<-lm(sat$obl~0 +sat$tan)
summary(sat_lm)
plot(sat$obl~0 +sat$tan)
abline(lm(sat$obl~0 +sat$tan))

DNA_transposon_lm<-lm(DNA_transposon$obl~0 +DNA_transposon$tan)
summary(DNA_transposon_lm)

LINE_lm<-lm(LINE$obl~0 +LINE$tan)
summary(LINE_lm)


LTR_lm<-lm(LTR$obl~0 +LTR$tan)
summary(LTR_lm)


Copia_lm<-lm(Copia$obl~0 +Copia$tan)
summary(Copia_lm)
plot(Copia$obl~0 +Copia$tan)
abline(lm(Copia$obl~0 +Copia$tan))

Gypsy_lm<-lm(Gypsy$obl~0 +Gypsy$tan)
summary(Gypsy_lm)
plot(Gypsy$obl~Gypsy$tan)
abline(lm(Gypsy$obl~0 +Gypsy$tan))
