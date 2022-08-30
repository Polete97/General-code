z<-read.delim("clipboard")

library(viridis)
library(RColorBrewer)
z$Annotation<-as.factor(z$Annotation)

z$Annotation
z$Annotation2 <- relevel(z$Annotation, "Ty3/gypsy","Ty1/copia", "LINE", "DNA transp.", "LTR", "rDNA", "Satellite", "<0.01", "Unclass", "Single")
safe_colorblind_palette <- c("#88CCEE", "#CC6677", "#DDCC77", "#117733", "#332288", "#AA4499", 
                             "#44AA99", "#999933", "grey", "#661100")
library(ggplot2)
library(scales)
p=ggplot(data=z, aes(x=reorder(ind, phylo), y=Mb, fill=forcats::fct_rev(factor(Annotation, levels = c("Ty3/gypsy","Ty1/copia", "LINE", "DNA transp.", "LTR", "rDNA", "Satellite", "<0.01", "Unclass", "Single")))))+
  geom_bar(stat="identity", color = "black")

p + coord_flip() +  scale_fill_viridis(option="turbo", discrete=TRUE, guide = guide_legend(reverse = TRUE,title="Genome composition"))+theme_minimal()
p + coord_flip() + scale_fill_brewer(palette = "Paired", guide = guide_legend(reverse = TRUE,title="Genome composition"))+theme_minimal()
p + coord_flip() + scale_fill_manual( values= rev(safe_colorblind_palette), guide = guide_legend(reverse = TRUE,title="Genome composition"))+theme_minimal()
p + coord_flip() +  scale_fill_viridis(discrete=TRUE, direction= -1, guide = guide_legend(reverse = TRUE,title="Genome composition"))+theme_minimal()




p=ggplot(data=z, aes(x= ind, y=Gb, fill = Annotation)) +geom_bar(stat="identity", color = "black")

p + coord_flip() +  scale_fill_viridis(option="turbo", discrete=TRUE, guide = guide_legend(reverse = TRUE,title="Genome composition"))


### one representative for each cyto
library(tidyverse)
substet = z %>% filter(  ind == "FR84" | ind == "FR422"| ind == "FR507")

d=ggplot(data=substet, aes(x=reorder(ind, -Mb), y=Mb, fill=forcats::fct_rev(factor(Annotation2, levels = c("Ty3/gypsy","Ty1/copia","LTR", "DNA transp.", "rDNA", "Pararetrovirus", "Satellite", "<0.01", "Unclass", "Single")))))+
  geom_bar(stat="identity")

d + coord_flip() +  scale_fill_viridis(option="turbo", discrete=TRUE, guide = guide_legend(reverse = TRUE,title="Genome composition"))+theme_minimal()
d + coord_flip() + scale_fill_manual(values= rev(safe_colorblind_palette), guide = guide_legend(reverse = TRUE,title="Genome composition"))+theme_minimal()
d + coord_flip() + scale_fill_manual(values= safe_colorblind_palette, guide = guide_legend(reverse = TRUE,title="Genome composition"))+theme_minimal()
d + coord_flip() +  scale_fill_viridis(discrete=TRUE, direction= -1, guide = guide_legend(reverse = TRUE,title="Genome composition"))+theme_minimal()
