####Grwoth_rate
library(readr)
GR_raw<- read_csv("./Trait587.csv")
GR <- GR_raw[,1-27]

library(dplyr)
#Nitrogen_rep<- GR %>% group_by(ObsDataID) %>% filter(n()>1)

GR_clean <- GR %>% filter(OrigUnitStr == "mm" & OriglName == "ann. rad. gr")
GR_clean_norep<-GR_clean %>% distinct(ObsDataID, .keep_all = TRUE)

sp_count<-GR_clean_norep %>% count(AccSpeciesName, sort = TRUE)
summary(sp_count)

GR_clean_norep$OrigValueStr<-as.numeric(GR_clean_norep$OrigValueStr)
hist(GR_clean_norep$OrigValueStr)

GR_clean_norep_morethan5<-GR_clean_norep %>% group_by(AccSpeciesName)%>% filter( n() > 0 )
count(GR_clean_norep_morethan5,AccSpeciesName)

Sp_means<-aggregate(OrigValueStr~AccSpeciesName, data=GR_clean_norep_morethan5, mean)
Sp_sd<-aggregate(OrigValueStr~AccSpeciesName, data=GR_clean_norep_morethan5, sd)
hist(Sp_means$OrigValueStr)

count<-count(GR_clean_norep_morethan5,AccSpeciesName)
Final_GR<-merge.data.frame(Sp_means,count, by = "AccSpeciesName")
Final_GR<-merge.data.frame(Sp_sd,Final_GR, by = "AccSpeciesName")
colnames(Final_GR)<-c("Sp","Sd","Mean","n")
Final_GR$sd_err<-Final_GR$Sd/(sqrt(Final_GR$n))
Final_GR$cv<-Final_GR$Sd/Final_GR$Mean *100

summary(Final_GR$Sd)

glm_mean<-glm( Final_GR$Mean ~ Final_GR$n  , family = Gamma(link = "log"))
summary(glm_mean)
glm_mean2<-glm( Final_GR$Sd+0.0000001 ~ Final_GR$n  , family = Gamma(link = "log"))
summary(glm_mean2)
glm_mean3<-glm( Final_GR$cv+0.0000001 ~ Final_GR$n  , family = Gamma(link = "log"))
summary(glm_mean3)


#######Raunk

library(readr)
R<- read_csv("./Trait343_2.csv")

library(dplyr)
#Nitrogen_rep<- R %>% group_by(ObsDataID) %>% filter(n()>1)

R_clean <- R %>% filter(OriglName != "Position of meristems (Raunkiaer life forms)" & OriglName != "Mega-, meso-, micro-, nanophanerophyte")
R_clean_norep<-R_clean %>% distinct(ObsDataID, .keep_all = TRUE)

unique(R_clean_norep$OrigValueStr)


R_Phanerophytes<- subset(R_clean_norep, R_clean_norep$OrigValueStr == "Macrophanerophyte"|
                           R_clean_norep$OrigValueStr == "Macrophanerophyte/Nanophanerophyte" |
                           R_clean_norep$OrigValueStr ==  "Nanophanerophyte" |
                           R_clean_norep$OrigValueStr == "Pseudophanerophyte" |
                           R_clean_norep$OrigValueStr == "Hemiphanerophyte" |
                           R_clean_norep$OrigValueStr == "Hemiphanerophyte/Nanophanerophyte" |
                           R_clean_norep$OrigValueStr == "Deciduous meso-phanerophytes" |
                           R_clean_norep$OrigValueStr == "Mega- meso- and micro- phanerophyte"|
                           R_clean_norep$OrigValueStr == "Mega-, meso- and microphanerophyte" |
                           R_clean_norep$OrigValueStr == "Micro-phanerophytes" |
                           R_clean_norep$OrigValueStr == "Nanophanerophyt" |
                           R_clean_norep$OrigValueStr == "Nanophanerophyte" |
                           R_clean_norep$OrigValueStr == "nanophanerophyte (shrub)" |  
                           R_clean_norep$OrigValueStr == "Ph"|
                          R_clean_norep$OrigValueStr == "Phanerophyte"|
                          R_clean_norep$OrigValueStr == "Phanerophyte (mega-,meso-, nano-)"|
                          R_clean_norep$OrigValueStr == "Phanerophyte (meso-)"|
                          R_clean_norep$OrigValueStr == "Phanerophytes"|
                          R_clean_norep$OrigValueStr == "shrub"|
                          R_clean_norep$OrigValueStr == "tree"|
                          R_clean_norep$OrigValueStr == "P"|                          
                           R_clean_norep$OrigValueStr == "Ph")
R_Phanerophytes$StdValue <- "Phanerophyte"


R_Epiphytes<- subset(R_clean_norep, R_clean_norep$OrigValueStr == "Ep"|
                       R_clean_norep$OrigValueStr == "epiphyte"  )
R_Epiphytes$StdValue <- "Epiphytes"


R_Chamaephytes<- subset(R_clean_norep, R_clean_norep$OrigValueStr == "Chamaephyte"|
                          #R_clean_norep$OrigValueStr == "Chamaephyte, sometimes Therophyte" |
                          R_clean_norep$OrigValueStr ==  "Chamephyte" |
                          R_clean_norep$OrigValueStr == "Chamaephytes" |
                          R_clean_norep$OrigValueStr == "Chamaephyte" |
                          R_clean_norep$OrigValueStr == "Cha"|
                          R_clean_norep$OrigValueStr == "CH")                      
R_Chamaephytes$StdValue <- "Chamaephytes"


R_Hemicryptophytes<- subset(R_clean_norep, R_clean_norep$OrigValueStr == "Ht"|
                              R_clean_norep$OrigValueStr == "Ht-H" |
                              #R_clean_norep$OrigValueStr ==  "Ht-t" |
                              R_clean_norep$OrigValueStr == "Hh" |
                              R_clean_norep$OrigValueStr == "Hemicryptophytes" |
                              R_clean_norep$OrigValueStr == "H"|
                              #R_clean_norep$OrigValueStr == "H (Ch)"|
                              #R_clean_norep$OrigValueStr == "H (G)"|
                          R_clean_norep$OrigValueStr == "Hemicryptophyte"|
                          R_clean_norep$OrigValueStr ==  "Hemicryptophyte, sometimes Therophyte" |                              
                           # R_clean_norep$OrigValueStr == "H (Hh)"|
                             # R_clean_norep$OrigValueStr == "H(Ch)"|
                             # R_clean_norep$OrigValueStr == "H(Hh)"|
                            #R_clean_norep$OrigValueStr == "Hemicryptophyte/Hydrophyte"|
                              R_clean_norep$OrigValueStr == "Hemicryptophyte")
R_Hemicryptophytes$StdValue <- "Hemicryptophytes"


R_Cryptophytes<- subset(R_clean_norep, R_clean_norep$OrigValueStr == "Geophyte"|
                          #R_clean_norep$OrigValueStr == "Geophyte/Hemicryptophyte" |
                          #R_clean_norep$OrigValueStr ==  "Geophyte/Hemicryptophyte/Hydrophyte" |
                          #R_clean_norep$OrigValueStr == "Geophyte/Hydrophyte" |
                          #R_clean_norep$OrigValueStr == "Geophyte/Therophyte" |
                          R_clean_norep$OrigValueStr == "Non-bulbous geophyte"|
                          R_clean_norep$OrigValueStr == "Non-bulbous geophyte (rhizome, corm or tuber)"|
                          R_clean_norep$OrigValueStr == "Geophytes"|
                          #R_clean_norep$OrigValueStr == "Geophyte/Hemicryptophyte"|
                          R_clean_norep$OrigValueStr == "Geophyte"|
                          #R_clean_norep$OrigValueStr == "G(Hh)"|
                          #R_clean_norep$OrigValueStr == "G (Hh)"|
                          #R_clean_norep$OrigValueStr == "G (H)"|
                          R_clean_norep$OrigValueStr == "G"|
                          R_clean_norep$OrigValueStr == "cryptophyte"|
                          R_clean_norep$OrigValueStr == "Bulbous geophyte") 
                          
R_Cryptophytes$StdValue <- "Cryptophytes"


R_Therophytes<- subset(R_clean_norep, R_clean_norep$OrigValueStr == "Hydrophyte/Therophyte"|
                         R_clean_norep$OrigValueStr == "T" |
                         #R_clean_norep$OrigValueStr ==  "T, Ht" |
                         R_clean_norep$OrigValueStr == "Terophytes" |
                         R_clean_norep$OrigValueStr == "Therophyte" |
                         R_clean_norep$OrigValueStr == "Therophytes"|
                         R_clean_norep$OrigValueStr == "T-Th"|
                         R_clean_norep$OrigValueStr == " Therophyte" |                       
                         R_clean_norep$OrigValueStr == "Therophyte (annual land plant)")
R_Therophytes$StdValue <- "Therophytes"


R_parasite<- subset(R_clean_norep, R_clean_norep$OrigValueStr == "Vascular parasite"|
                        R_clean_norep$OrigValueStr == "Vascular semi-parasite" )
R_parasite$StdValue <- "parasite"

R_Hydrophyte<- subset(R_clean_norep, R_clean_norep$OrigValueStr == "Hydrophyte"|
                        R_clean_norep$OrigValueStr == "hydrophyte" |
                        R_clean_norep$OrigValueStr ==  "Perennial hydrophyte" |
                        R_clean_norep$OrigValueStr == "Perennial hydrophyte (perennial water plant)" )
R_Hydrophyte$StdValue <- "Hydrophyte"


R_complet<-rbind(R_Hydrophyte,R_parasite,R_Therophytes,R_Cryptophytes,R_Hemicryptophytes,R_Chamaephytes,R_Epiphytes,R_Phanerophytes)



unique(R_complet$StdValue)
names(which.max(table(R_complet$StdValue)))




Sp_means<-aggregate(StdValue~AccSpeciesName, data=R_complet,
                    function(x) { 
                      ux <- unique(x) 
                      ux[which.max(tabulate(match(x, ux)))] })


count<-count(R_complet,"AccSpeciesName")
Final_R<-merge.data.frame(Sp_means,count, by = "AccSpeciesName")
colnames(Final_R)<-c("Sp","Mean","n")


summary(Final_R$Mean)
glm_mean<-glm( Final_R$Mean ~ Final_R$n  , family = Gamma(link = "log"))
summary(glm_mean)
glm_mean2<-glm( Final_R$Sd+0.0000001 ~ Final_R$n  , family = Gamma(link = "log"))
summary(glm_mean2)
glm_mean3<-glm( Final_R$cv+0.0000001 ~ Final_R$n  , family = Gamma(link = "log"))
summary(glm_mean3)

#### Climate
library(readr)
Clim<- read_csv("./Trait825.csv")

library(dplyr)


Clim_clean <- Clim %>% filter(OriglName != "Position of meristems (Raunkiaer life forms)" & OriglName != "Mega-, meso-, micro-, nanophanerophyte")
Clim_clean_norep<-Clim_clean %>% distinct(ObsDataID, .keep_all = TRUE)

unique(Clim_clean_norep$OrigValueStr)


Clim_Temp<- subset(Clim_clean_norep, Clim_clean_norep$OrigValueStr == "TMP"|
                     Clim_clean_norep$OrigValueStr == "TEMP ARID" |
                     Clim_clean_norep$OrigValueStr ==  "temperate" |
                     Clim_clean_norep$OrigValueStr == "TEMP" |
                     Clim_clean_norep$OrigValueStr == "Cfa's climate type in Koëppen-Greige\u0092s classification" |
                     Clim_clean_norep$OrigValueStr == "Cfa climate type in Koeppen\u0092s classification" |
                     Clim_clean_norep$OrigValueStr == "TE" |
                     Clim_clean_norep$OrigValueStr == "Forested steppe"|
                     Clim_clean_norep$OrigValueStr == "Northern steppe (forb and bunchgrass dominated)" |
                     Clim_clean_norep$OrigValueStr == "Cfb climate type in Koeppen\u0092s classification" )
Clim_Temp$StdValue <- "Temp"


Clim_Trop<- subset(Clim_clean_norep, Clim_clean_norep$OrigValueStr == "TR"|
                     #Clim_clean_norep$OrigValueStr == "Tropical" |
                     Clim_clean_norep$OrigValueStr ==  "TROP" |
                     Clim_clean_norep$OrigValueStr == "tropical" |
                     Clim_clean_norep$OrigValueStr == "Tropical Savanna" |
                     Clim_clean_norep$OrigValueStr == "SUBTROP")                      
Clim_Trop$StdValue <- "Trop"


Clim_Cont<- subset(Clim_clean_norep, Clim_clean_norep$OrigValueStr == "Continental")
Clim_Cont$StdValue <- "Cont"


Clim_Med<- subset(Clim_clean_norep, Clim_clean_norep$OrigValueStr == "mediterranean"|
                    Clim_clean_norep$OrigValueStr == "Medi" |
                    Clim_clean_norep$OrigValueStr ==  "Mediterranean" )      
Clim_Med$StdValue <- "Med"


Clim_bor<- subset(Clim_clean_norep, Clim_clean_norep$OrigValueStr == "boreal"|
                    Clim_clean_norep$OrigValueStr == "BOR" |
                    Clim_clean_norep$OrigValueStr ==  "Tundra" |
                    Clim_clean_norep$OrigValueStr == "Tun/Alp" |
                    Clim_clean_norep$OrigValueStr == "Forested tundra" |
                    #Clim_clean_norep$OrigValueStr == "ARC_ALPINE"|
                    #Clim_clean_norep$OrigValueStr == "Mountains"|
                    Clim_clean_norep$OrigValueStr == "Southern subarctic tundra")
Clim_bor$StdValue <- "Bor"

Clim_alp<- subset(Clim_clean_norep, #Clim_clean_norep$OrigValueStr == "BOR" |
                    #Clim_clean_norep$OrigValueStr ==  "Tundra" |
                    #Clim_clean_norep$OrigValueStr == "Tun/Alp" |
                    #Clim_clean_norep$OrigValueStr == "Forested tundra" |
                    Clim_clean_norep$OrigValueStr == "ARC_ALPINE"|
                    Clim_clean_norep$OrigValueStr == "Mountains")
                    #Clim_clean_norep$OrigValueStr == "Southern subarctic tundra")
Clim_alp$StdValue <- "alp"

Clim_taiga<- subset(Clim_clean_norep, Clim_clean_norep$OrigValueStr == "Middle taiga"|
                      Clim_clean_norep$OrigValueStr == "Northern taiga" |
                      Clim_clean_norep$OrigValueStr ==  "Southern taiga" |
                      Clim_clean_norep$OrigValueStr == "Subtaiga (taiga vegetation mixed with broad-leaved forests)")
Clim_taiga$StdValue <- "taiga"



Clim_arid<- subset(Clim_clean_norep, Clim_clean_norep$OrigValueStr == "Desert")
Clim_arid$StdValue <- "Arid"


Clim_complet<-rbind(Clim_arid,Clim_taiga,Clim_bor,Clim_Med,Clim_Cont,Clim_Trop,Clim_Temp,Clim_alp)



unique(Clim_complet$StdValue)
names(which.max(table(Clim_complet$StdValue)))




Sp_means<-aggregate(StdValue~AccSpeciesName, data=Clim_complet,
                    function(x) { 
                      ux <- unique(x) 
                      ux[which.max(tabulate(match(x, ux)))] })


count<-count(Clim_complet,"AccSpeciesName")
Final_Clim<-merge.data.frame(Sp_means,count, by = "AccSpeciesName")
colnames(Final_Clim)<-c("Sp","Mean","n")




