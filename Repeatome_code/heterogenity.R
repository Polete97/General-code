##Heterogenity
library(readr)
hitsort_part_CL2 <- read_delim("C:/Users/Jaume/Nextcloud/Documents/Pol/Phoradendron/Repeat explorer/heterogenity/hitsort_part_CL2.csv", 
                               delim = "\t", escape_double = FALSE, 
                               col_names = FALSE, trim_ws = TRUE)


library(data.table)
library(ggplot2)

#tun
CL2_subset_tun <- hitsort_part_CL2[grep("tun", hitsort_part_CL2$X1, ), ]
CL2_subset_tun <- CL2_subset_tun[grep("tun", CL2_subset_tun$X2, ), ]
CL2_subset_tun <- subset(CL2_subset_tun, X10<99.99)

#cry
CL2_subset_cry <- hitsort_part_CL2[grep("cry", hitsort_part_CL2$X1, ), ]
CL2_subset_cry <- CL2_subset_cry[grep("cry", CL2_subset_cry$X2, ), ]
CL2_subset_cry <- subset(CL2_subset_cry, X10<99.99)

#DE5
CL2_subset_DE5 <- hitsort_part_CL2[grep("DE5", hitsort_part_CL2$X1, ), ]
CL2_subset_DE5 <- CL2_subset_DE5[grep("DE5", CL2_subset_DE5$X2, ), ]
CL2_subset_DE5 <- subset(CL2_subset_DE5, X10<99.99)

#DE9
CL2_subset_DE9 <- hitsort_part_CL2[grep("DE9", hitsort_part_CL2$X1, ), ]
CL2_subset_DE9 <- CL2_subset_DE9[grep("DE9", CL2_subset_DE9$X2, ), ]
CL2_subset_DE9 <- subset(CL2_subset_DE9, X10<99.99)

#791
CL2_subset_791 <- hitsort_part_CL2[startsWith(hitsort_part_CL2$X1, '791'),]
CL2_subset_791 <- CL2_subset_791[startsWith(CL2_subset_791$X2, '791'),]
CL2_subset_791 <- subset(CL2_subset_791, X10<99.99)

#qua
CL2_subset_qua <- hitsort_part_CL2[grep("qua", hitsort_part_CL2$X1, ), ]
CL2_subset_qua <- CL2_subset_qua[grep("qua", CL2_subset_qua$X2, ), ]
CL2_subset_qua <- subset(CL2_subset_qua, X10<99.99)

#cal
CL2_subset_cal <- hitsort_part_CL2[grep("cal", hitsort_part_CL2$X1, ), ]
CL2_subset_cal <- CL2_subset_cal[grep("cal", CL2_subset_cal$X2, ), ]
CL2_subset_cal <- subset(CL2_subset_cal, X10<99.99)

#cra
CL2_subset_cra <- hitsort_part_CL2[grep("cra", hitsort_part_CL2$X1, ), ]
CL2_subset_cra <- CL2_subset_cra[grep("cra", CL2_subset_cra$X2, ), ]
CL2_subset_cra <- subset(CL2_subset_cra, X10<99.99)

#dip
CL2_subset_dip <- hitsort_part_CL2[grep("dip", hitsort_part_CL2$X1, ), ]
CL2_subset_dip <- CL2_subset_dip[grep("dip", CL2_subset_dip$X2, ), ]
CL2_subset_dip <- subset(CL2_subset_dip, X10<99.99)


#tom
CL2_subset_tom <- hitsort_part_CL2[grep("tom", hitsort_part_CL2$X1, ), ]
CL2_subset_tom <- CL2_subset_tom[grep("tom", CL2_subset_tom$X2, ), ]
CL2_subset_tom <- subset(CL2_subset_tom, X10<99.99)

#rub
CL2_subset_rub <- hitsort_part_CL2[grep("rub", hitsort_part_CL2$X1, ), ]
CL2_subset_rub <- CL2_subset_rub[grep("rub", CL2_subset_rub$X2, ), ]
CL2_subset_rub <- subset(CL2_subset_rub, X10<99.99)


CL2_subset_DE5<-ggplot(CL2_subset_DE5, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL2_subset_DE5")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL2_subset_DE9<-ggplot(CL2_subset_DE9, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL2_subset_DE9")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL2_subset_791<-ggplot(CL2_subset_791, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL2_subset_791")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL2_subset_qua<-ggplot(CL2_subset_qua, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL2_subset_qua")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL2_subset_cry<-ggplot(CL2_subset_cry, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL2_subset_cry")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL2_subset_cal<-ggplot(CL2_subset_cal, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL2_subset_cal")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL2_subset_cra<-ggplot(CL2_subset_cra, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL2_subset_cra")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL2_subset_dip<-ggplot(CL2_subset_dip, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL2_subset_dip")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL2_subset_tom<-ggplot(CL2_subset_tom, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL2_subset_tom")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL2_subset_rub<-ggplot(CL2_subset_rub, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL2_subset_rub")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL2_subset_tun<-ggplot(CL2_subset_tun, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL2_subset_tun")+
  theme_minimal()+ expand_limits(x=c(90,100))


####means_heterogenity
means_CL2_names<-c("DE5",
                   "DE9",
                   "rub",
                   "791",
                   "cra",
                   "cry",
                   "dip",
                   "qua",
                   "cal",
                   "tun",
                   "tom"
)
means_CL2_values<-c(mean(CL2_subset_DE5$X10),
                    mean(CL2_subset_DE9$X10),
                    mean(CL2_subset_rub$X10),
                    mean(CL2_subset_791$X10),
                    mean(CL2_subset_cra$X10),
                    mean(CL2_subset_cry$X10),
                    mean(CL2_subset_dip$X10),
                    mean(CL2_subset_qua$X10),
                    mean(CL2_subset_cal$X10),
                    mean(CL2_subset_tun$X10),
                    mean(CL2_subset_tom$X10)
)


means_CL2<-data.frame(means_CL2_names,means_CL2_values)
means_CL2




##Heterogenity
library(readr)
hitsort_part_CL3 <- read_delim("C:/Users/Jaume/Nextcloud/Documents/Pol/Phoradendron/Repeat explorer/heterogenity/hitsort_part_CL3.csv", 
                               delim = "\t", escape_double = FALSE, 
                               col_names = FALSE, trim_ws = TRUE)


library(data.table)
library(ggplot2)

#tun
CL3_subset_tun <- hitsort_part_CL3[grep("tun", hitsort_part_CL3$X1, ), ]
CL3_subset_tun <- CL3_subset_tun[grep("tun", CL3_subset_tun$X2, ), ]
CL3_subset_tun <- subset(CL3_subset_tun, X10<99.99)

#cry
CL3_subset_cry <- hitsort_part_CL3[grep("cry", hitsort_part_CL3$X1, ), ]
CL3_subset_cry <- CL3_subset_cry[grep("cry", CL3_subset_cry$X2, ), ]
CL3_subset_cry <- subset(CL3_subset_cry, X10<99.99)

#DE5
CL3_subset_DE5 <- hitsort_part_CL3[grep("DE5", hitsort_part_CL3$X1, ), ]
CL3_subset_DE5 <- CL3_subset_DE5[grep("DE5", CL3_subset_DE5$X2, ), ]
CL3_subset_DE5 <- subset(CL3_subset_DE5, X10<99.99)

#DE9
CL3_subset_DE9 <- hitsort_part_CL3[grep("DE9", hitsort_part_CL3$X1, ), ]
CL3_subset_DE9 <- CL3_subset_DE9[grep("DE9", CL3_subset_DE9$X2, ), ]
CL3_subset_DE9 <- subset(CL3_subset_DE9, X10<99.99)

#791
CL3_subset_791 <- hitsort_part_CL3[startsWith(hitsort_part_CL3$X1, '791'),]
CL3_subset_791 <- CL3_subset_791[startsWith(CL3_subset_791$X2, '791'),]
CL3_subset_791 <- subset(CL3_subset_791, X10<99.99)

#qua
CL3_subset_qua <- hitsort_part_CL3[grep("qua", hitsort_part_CL3$X1, ), ]
CL3_subset_qua <- CL3_subset_qua[grep("qua", CL3_subset_qua$X2, ), ]
CL3_subset_qua <- subset(CL3_subset_qua, X10<99.99)

#cal
CL3_subset_cal <- hitsort_part_CL3[grep("cal", hitsort_part_CL3$X1, ), ]
CL3_subset_cal <- CL3_subset_cal[grep("cal", CL3_subset_cal$X2, ), ]
CL3_subset_cal <- subset(CL3_subset_cal, X10<99.99)

#cra
CL3_subset_cra <- hitsort_part_CL3[grep("cra", hitsort_part_CL3$X1, ), ]
CL3_subset_cra <- CL3_subset_cra[grep("cra", CL3_subset_cra$X2, ), ]
CL3_subset_cra <- subset(CL3_subset_cra, X10<99.99)

#dip
CL3_subset_dip <- hitsort_part_CL3[grep("dip", hitsort_part_CL3$X1, ), ]
CL3_subset_dip <- CL3_subset_dip[grep("dip", CL3_subset_dip$X2, ), ]
CL3_subset_dip <- subset(CL3_subset_dip, X10<99.99)


#tom
CL3_subset_tom <- hitsort_part_CL3[grep("tom", hitsort_part_CL3$X1, ), ]
CL3_subset_tom <- CL3_subset_tom[grep("tom", CL3_subset_tom$X2, ), ]
CL3_subset_tom <- subset(CL3_subset_tom, X10<99.99)

#rub
CL3_subset_rub <- hitsort_part_CL3[grep("rub", hitsort_part_CL3$X1, ), ]
CL3_subset_rub <- CL3_subset_rub[grep("rub", CL3_subset_rub$X2, ), ]
CL3_subset_rub <- subset(CL3_subset_rub, X10<99.99)


CL3_subset_DE5<-ggplot(CL3_subset_DE5, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL3_subset_DE5")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL3_subset_DE9<-ggplot(CL3_subset_DE9, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL3_subset_DE9")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL3_subset_791<-ggplot(CL3_subset_791, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL3_subset_791")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL3_subset_qua<-ggplot(CL3_subset_qua, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL3_subset_qua")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL3_subset_cry<-ggplot(CL3_subset_cry, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL3_subset_cry")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL3_subset_cal<-ggplot(CL3_subset_cal, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL3_subset_cal")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL3_subset_cra<-ggplot(CL3_subset_cra, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL3_subset_cra")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL3_subset_dip<-ggplot(CL3_subset_dip, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL3_subset_dip")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL3_subset_tom<-ggplot(CL3_subset_tom, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL3_subset_tom")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL3_subset_rub<-ggplot(CL3_subset_rub, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL3_subset_rub")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL3_subset_tun<-ggplot(CL3_subset_tun, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL3_subset_tun")+
  theme_minimal()+ expand_limits(x=c(90,100))

##Heterogenity
library(readr)
hitsort_part_CL48 <- read_delim("C:/Users/Jaume/Nextcloud/Documents/Pol/Phoradendron/Repeat explorer/heterogenity/hitsort_part_CL48.csv", 
                                delim = "\t", escape_double = FALSE, 
                                col_names = FALSE, trim_ws = TRUE)


library(data.table)
library(ggplot2)

#tun
CL48_subset_tun <- hitsort_part_CL48[grep("tun", hitsort_part_CL48$X1, ), ]
CL48_subset_tun <- CL48_subset_tun[grep("tun", CL48_subset_tun$X2, ), ]
CL48_subset_tun <- subset(CL48_subset_tun, X10<99.99)

#cry
CL48_subset_cry <- hitsort_part_CL48[grep("cry", hitsort_part_CL48$X1, ), ]
CL48_subset_cry <- CL48_subset_cry[grep("cry", CL48_subset_cry$X2, ), ]
CL48_subset_cry <- subset(CL48_subset_cry, X10<99.99)

#DE5
CL48_subset_DE5 <- hitsort_part_CL48[grep("DE5", hitsort_part_CL48$X1, ), ]
CL48_subset_DE5 <- CL48_subset_DE5[grep("DE5", CL48_subset_DE5$X2, ), ]
CL48_subset_DE5 <- subset(CL48_subset_DE5, X10<99.99)

#DE9
CL48_subset_DE9 <- hitsort_part_CL48[grep("DE9", hitsort_part_CL48$X1, ), ]
CL48_subset_DE9 <- CL48_subset_DE9[grep("DE9", CL48_subset_DE9$X2, ), ]
CL48_subset_DE9 <- subset(CL48_subset_DE9, X10<99.99)

#791
CL48_subset_791 <- hitsort_part_CL48[startsWith(hitsort_part_CL48$X1, '791'),]
CL48_subset_791 <- CL48_subset_791[startsWith(CL48_subset_791$X2, '791'),]
CL48_subset_791 <- subset(CL48_subset_791, X10<99.99)

#qua
CL48_subset_qua <- hitsort_part_CL48[grep("qua", hitsort_part_CL48$X1, ), ]
CL48_subset_qua <- CL48_subset_qua[grep("qua", CL48_subset_qua$X2, ), ]
CL48_subset_qua <- subset(CL48_subset_qua, X10<99.99)

#cal
CL48_subset_cal <- hitsort_part_CL48[grep("cal", hitsort_part_CL48$X1, ), ]
CL48_subset_cal <- CL48_subset_cal[grep("cal", CL48_subset_cal$X2, ), ]
CL48_subset_cal <- subset(CL48_subset_cal, X10<99.99)

#cra
CL48_subset_cra <- hitsort_part_CL48[grep("cra", hitsort_part_CL48$X1, ), ]
CL48_subset_cra <- CL48_subset_cra[grep("cra", CL48_subset_cra$X2, ), ]
CL48_subset_cra <- subset(CL48_subset_cra, X10<99.99)

#dip
CL48_subset_dip <- hitsort_part_CL48[grep("dip", hitsort_part_CL48$X1, ), ]
CL48_subset_dip <- CL48_subset_dip[grep("dip", CL48_subset_dip$X2, ), ]
CL48_subset_dip <- subset(CL48_subset_dip, X10<99.99)


#tom
CL48_subset_tom <- hitsort_part_CL48[grep("tom", hitsort_part_CL48$X1, ), ]
CL48_subset_tom <- CL48_subset_tom[grep("tom", CL48_subset_tom$X2, ), ]
CL48_subset_tom <- subset(CL48_subset_tom, X10<99.99)

#rub
CL48_subset_rub <- hitsort_part_CL48[grep("rub", hitsort_part_CL48$X1, ), ]
CL48_subset_rub <- CL48_subset_rub[grep("rub", CL48_subset_rub$X2, ), ]
CL48_subset_rub <- subset(CL48_subset_rub, X10<99.99)


CL48_subset_DE5<-ggplot(CL48_subset_DE5, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL48_subset_DE5")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL48_subset_DE9<-ggplot(CL48_subset_DE9, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL48_subset_DE9")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL48_subset_791<-ggplot(CL48_subset_791, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL48_subset_791")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL48_subset_qua<-ggplot(CL48_subset_qua, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL48_subset_qua")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL48_subset_cry<-ggplot(CL48_subset_cry, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL48_subset_cry")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL48_subset_cal<-ggplot(CL48_subset_cal, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL48_subset_cal")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL48_subset_cra<-ggplot(CL48_subset_cra, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL48_subset_cra")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL48_subset_dip<-ggplot(CL48_subset_dip, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL48_subset_dip")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL48_subset_tom<-ggplot(CL48_subset_tom, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL48_subset_tom")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL48_subset_rub<-ggplot(CL48_subset_rub, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL48_subset_rub")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL48_subset_tun<-ggplot(CL48_subset_tun, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL48_subset_tun")+
  theme_minimal()+ expand_limits(x=c(90,100))


means_CL48_names<-c("DE5",
                    "DE9",
                    "rub",
                    "791",
                    "cra",
                    "cry",
                    "dip",
                    "qua",
                    "cal",
                    "tun",
                    "tom"
)
means_CL48_values<-c(mean(CL48_subset_DE5$X10),
                     mean(CL48_subset_DE9$X10),
                     mean(CL48_subset_rub$X10),
                     mean(CL48_subset_791$X10),
                     mean(CL48_subset_cra$X10),
                     mean(CL48_subset_cry$X10),
                     mean(CL48_subset_dip$X10),
                     mean(CL48_subset_qua$X10),
                     mean(CL48_subset_cal$X10),
                     mean(CL48_subset_tun$X10),
                     mean(CL48_subset_tom$X10)
)


means_CL48<-data.frame(means_CL48_names,means_CL48_values)
means_CL48




##Heterogenity
library(readr)
hitsort_part_CL105 <- read_delim("C:/Users/Jaume/Nextcloud/Documents/Pol/Phoradendron/Repeat explorer/heterogenity/hitsort_part_CL105.csv", 
                                 delim = "\t", escape_double = FALSE, 
                                 col_names = FALSE, trim_ws = TRUE)


library(data.table)
library(ggplot2)

#tun
CL105_subset_tun <- hitsort_part_CL105[grep("tun", hitsort_part_CL105$X1, ), ]
CL105_subset_tun <- CL105_subset_tun[grep("tun", CL105_subset_tun$X2, ), ]
CL105_subset_tun <- subset(CL105_subset_tun, X10<99.99)

#cry
CL105_subset_cry <- hitsort_part_CL105[grep("cry", hitsort_part_CL105$X1, ), ]
CL105_subset_cry <- CL105_subset_cry[grep("cry", CL105_subset_cry$X2, ), ]
CL105_subset_cry <- subset(CL105_subset_cry, X10<99.99)

#DE5
CL105_subset_DE5 <- hitsort_part_CL105[grep("DE5", hitsort_part_CL105$X1, ), ]
CL105_subset_DE5 <- CL105_subset_DE5[grep("DE5", CL105_subset_DE5$X2, ), ]
CL105_subset_DE5 <- subset(CL105_subset_DE5, X10<99.99)

#DE9
CL105_subset_DE9 <- hitsort_part_CL105[grep("DE9", hitsort_part_CL105$X1, ), ]
CL105_subset_DE9 <- CL105_subset_DE9[grep("DE9", CL105_subset_DE9$X2, ), ]
CL105_subset_DE9 <- subset(CL105_subset_DE9, X10<99.99)

#791
CL105_subset_791 <- hitsort_part_CL105[startsWith(hitsort_part_CL105$X1, '791'),]
CL105_subset_791 <- CL105_subset_791[startsWith(CL105_subset_791$X2, '791'),]
CL105_subset_791 <- subset(CL105_subset_791, X10<99.99)

#qua
CL105_subset_qua <- hitsort_part_CL105[grep("qua", hitsort_part_CL105$X1, ), ]
CL105_subset_qua <- CL105_subset_qua[grep("qua", CL105_subset_qua$X2, ), ]
CL105_subset_qua <- subset(CL105_subset_qua, X10<99.99)

#cal
CL105_subset_cal <- hitsort_part_CL105[grep("cal", hitsort_part_CL105$X1, ), ]
CL105_subset_cal <- CL105_subset_cal[grep("cal", CL105_subset_cal$X2, ), ]
CL105_subset_cal <- subset(CL105_subset_cal, X10<99.99)

#cra
CL105_subset_cra <- hitsort_part_CL105[grep("cra", hitsort_part_CL105$X1, ), ]
CL105_subset_cra <- CL105_subset_cra[grep("cra", CL105_subset_cra$X2, ), ]
CL105_subset_cra <- subset(CL105_subset_cra, X10<99.99)

#dip
CL105_subset_dip <- hitsort_part_CL105[grep("dip", hitsort_part_CL105$X1, ), ]
CL105_subset_dip <- CL105_subset_dip[grep("dip", CL105_subset_dip$X2, ), ]
CL105_subset_dip <- subset(CL105_subset_dip, X10<99.99)


#tom
CL105_subset_tom <- hitsort_part_CL105[grep("tom", hitsort_part_CL105$X1, ), ]
CL105_subset_tom <- CL105_subset_tom[grep("tom", CL105_subset_tom$X2, ), ]
CL105_subset_tom <- subset(CL105_subset_tom, X10<99.99)

#rub
CL105_subset_rub <- hitsort_part_CL105[grep("rub", hitsort_part_CL105$X1, ), ]
CL105_subset_rub <- CL105_subset_rub[grep("rub", CL105_subset_rub$X2, ), ]
CL105_subset_rub <- subset(CL105_subset_rub, X10<99.99)


CL105_subset_DE5<-ggplot(CL105_subset_DE5, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL105_subset_DE5")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL105_subset_DE9<-ggplot(CL105_subset_DE9, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL105_subset_DE9")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL105_subset_791<-ggplot(CL105_subset_791, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL105_subset_791")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL105_subset_qua<-ggplot(CL105_subset_qua, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL105_subset_qua")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL105_subset_cry<-ggplot(CL105_subset_cry, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL105_subset_cry")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL105_subset_cal<-ggplot(CL105_subset_cal, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL105_subset_cal")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL105_subset_cra<-ggplot(CL105_subset_cra, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL105_subset_cra")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL105_subset_dip<-ggplot(CL105_subset_dip, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL105_subset_dip")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL105_subset_tom<-ggplot(CL105_subset_tom, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL105_subset_tom")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL105_subset_rub<-ggplot(CL105_subset_rub, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL105_subset_rub")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL105_subset_tun<-ggplot(CL105_subset_tun, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL105_subset_tun")+
  theme_minimal()+ expand_limits(x=c(90,100))
##Heterogenity
library(readr)
hitsort_part_CL136 <- read_delim("C:/Users/Jaume/Nextcloud/Documents/Pol/Phoradendron/Repeat explorer/heterogenity/hitsort_part_CL136.csv", 
                                 delim = "\t", escape_double = FALSE, 
                                 col_names = FALSE, trim_ws = TRUE)


library(data.table)
library(ggplot2)

#tun
CL136_subset_tun <- hitsort_part_CL136[grep("tun", hitsort_part_CL136$X1, ), ]
CL136_subset_tun <- CL136_subset_tun[grep("tun", CL136_subset_tun$X2, ), ]
CL136_subset_tun <- subset(CL136_subset_tun, X10<99.99)

#cry
CL136_subset_cry <- hitsort_part_CL136[grep("cry", hitsort_part_CL136$X1, ), ]
CL136_subset_cry <- CL136_subset_cry[grep("cry", CL136_subset_cry$X2, ), ]
CL136_subset_cry <- subset(CL136_subset_cry, X10<99.99)

#DE5
CL136_subset_DE5 <- hitsort_part_CL136[grep("DE5", hitsort_part_CL136$X1, ), ]
CL136_subset_DE5 <- CL136_subset_DE5[grep("DE5", CL136_subset_DE5$X2, ), ]
CL136_subset_DE5 <- subset(CL136_subset_DE5, X10<99.99)

#DE9
CL136_subset_DE9 <- hitsort_part_CL136[grep("DE9", hitsort_part_CL136$X1, ), ]
CL136_subset_DE9 <- CL136_subset_DE9[grep("DE9", CL136_subset_DE9$X2, ), ]
CL136_subset_DE9 <- subset(CL136_subset_DE9, X10<99.99)

#791
CL136_subset_791 <- hitsort_part_CL136[startsWith(hitsort_part_CL136$X1, '791'),]
CL136_subset_791 <- CL136_subset_791[startsWith(CL136_subset_791$X2, '791'),]
CL136_subset_791 <- subset(CL136_subset_791, X10<99.99)

#qua
CL136_subset_qua <- hitsort_part_CL136[grep("qua", hitsort_part_CL136$X1, ), ]
CL136_subset_qua <- CL136_subset_qua[grep("qua", CL136_subset_qua$X2, ), ]
CL136_subset_qua <- subset(CL136_subset_qua, X10<99.99)

#cal
CL136_subset_cal <- hitsort_part_CL136[grep("cal", hitsort_part_CL136$X1, ), ]
CL136_subset_cal <- CL136_subset_cal[grep("cal", CL136_subset_cal$X2, ), ]
CL136_subset_cal <- subset(CL136_subset_cal, X10<99.99)

#cra
CL136_subset_cra <- hitsort_part_CL136[grep("cra", hitsort_part_CL136$X1, ), ]
CL136_subset_cra <- CL136_subset_cra[grep("cra", CL136_subset_cra$X2, ), ]
CL136_subset_cra <- subset(CL136_subset_cra, X10<99.99)

#dip
CL136_subset_dip <- hitsort_part_CL136[grep("dip", hitsort_part_CL136$X1, ), ]
CL136_subset_dip <- CL136_subset_dip[grep("dip", CL136_subset_dip$X2, ), ]
CL136_subset_dip <- subset(CL136_subset_dip, X10<99.99)


#tom
CL136_subset_tom <- hitsort_part_CL136[grep("tom", hitsort_part_CL136$X1, ), ]
CL136_subset_tom <- CL136_subset_tom[grep("tom", CL136_subset_tom$X2, ), ]
CL136_subset_tom <- subset(CL136_subset_tom, X10<99.99)

#rub
CL136_subset_rub <- hitsort_part_CL136[grep("rub", hitsort_part_CL136$X1, ), ]
CL136_subset_rub <- CL136_subset_rub[grep("rub", CL136_subset_rub$X2, ), ]
CL136_subset_rub <- subset(CL136_subset_rub, X10<99.99)


CL136_subset_DE5<-ggplot(CL136_subset_DE5, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL136_subset_DE5")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL136_subset_DE9<-ggplot(CL136_subset_DE9, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL136_subset_DE9")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL136_subset_791<-ggplot(CL136_subset_791, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL136_subset_791")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL136_subset_qua<-ggplot(CL136_subset_qua, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL136_subset_qua")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL136_subset_cry<-ggplot(CL136_subset_cry, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL136_subset_cry")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL136_subset_cal<-ggplot(CL136_subset_cal, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL136_subset_cal")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL136_subset_cra<-ggplot(CL136_subset_cra, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL136_subset_cra")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL136_subset_dip<-ggplot(CL136_subset_dip, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL136_subset_dip")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL136_subset_tom<-ggplot(CL136_subset_tom, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL136_subset_tom")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL136_subset_rub<-ggplot(CL136_subset_rub, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL136_subset_rub")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL136_subset_tun<-ggplot(CL136_subset_tun, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL136_subset_tun")+
  theme_minimal()+ expand_limits(x=c(90,100))


####means_heterogenity
means_CL136_names<-c("DE5",
                     "DE9",
                     "rub",
                     "791",
                     "cra",
                     "cry",
                     "dip",
                     "qua",
                     "cal",
                     "tun",
                     "tom"
)
means_CL136_values<-c(mean(CL136_subset_DE5$X10),
                      mean(CL136_subset_DE9$X10),
                      mean(CL136_subset_rub$X10),
                      mean(CL136_subset_791$X10),
                      mean(CL136_subset_cra$X10),
                      mean(CL136_subset_cry$X10),
                      mean(CL136_subset_dip$X10),
                      mean(CL136_subset_qua$X10),
                      mean(CL136_subset_cal$X10),
                      mean(CL136_subset_tun$X10),
                      mean(CL136_subset_tom$X10)
)


means_CL136<-data.frame(means_CL136_names,means_CL136_values)
means_CL136







##Heterogenity
library(readr)
hitsort_part_CL30 <- read_delim("C:/Users/Jaume/Nextcloud/Documents/Pol/Phoradendron/Repeat explorer/heterogenity/hitsort_part_CL30.csv", 
                                delim = "\t", escape_double = FALSE, 
                                col_names = FALSE, trim_ws = TRUE)


library(data.table)
library(ggplot2)

#tun
CL30_subset_tun <- hitsort_part_CL30[grep("tun", hitsort_part_CL30$X1, ), ]
CL30_subset_tun <- CL30_subset_tun[grep("tun", CL30_subset_tun$X2, ), ]
CL30_subset_tun <- subset(CL30_subset_tun, X10<99.99)

#cry
CL30_subset_cry <- hitsort_part_CL30[grep("cry", hitsort_part_CL30$X1, ), ]
CL30_subset_cry <- CL30_subset_cry[grep("cry", CL30_subset_cry$X2, ), ]
CL30_subset_cry <- subset(CL30_subset_cry, X10<99.99)

#DE5
CL30_subset_DE5 <- hitsort_part_CL30[grep("DE5", hitsort_part_CL30$X1, ), ]
CL30_subset_DE5 <- CL30_subset_DE5[grep("DE5", CL30_subset_DE5$X2, ), ]
CL30_subset_DE5 <- subset(CL30_subset_DE5, X10<99.99)

#DE9
CL30_subset_DE9 <- hitsort_part_CL30[grep("DE9", hitsort_part_CL30$X1, ), ]
CL30_subset_DE9 <- CL30_subset_DE9[grep("DE9", CL30_subset_DE9$X2, ), ]
CL30_subset_DE9 <- subset(CL30_subset_DE9, X10<99.99)

#791
CL30_subset_791 <- hitsort_part_CL30[startsWith(hitsort_part_CL30$X1, '791'),]
CL30_subset_791 <- CL30_subset_791[startsWith(CL30_subset_791$X2, '791'),]
CL30_subset_791 <- subset(CL30_subset_791, X10<99.99)

#qua
CL30_subset_qua <- hitsort_part_CL30[grep("qua", hitsort_part_CL30$X1, ), ]
CL30_subset_qua <- CL30_subset_qua[grep("qua", CL30_subset_qua$X2, ), ]
CL30_subset_qua <- subset(CL30_subset_qua, X10<99.99)

#cal
CL30_subset_cal <- hitsort_part_CL30[grep("cal", hitsort_part_CL30$X1, ), ]
CL30_subset_cal <- CL30_subset_cal[grep("cal", CL30_subset_cal$X2, ), ]
CL30_subset_cal <- subset(CL30_subset_cal, X10<99.99)

#cra
CL30_subset_cra <- hitsort_part_CL30[grep("cra", hitsort_part_CL30$X1, ), ]
CL30_subset_cra <- CL30_subset_cra[grep("cra", CL30_subset_cra$X2, ), ]
CL30_subset_cra <- subset(CL30_subset_cra, X10<99.99)

#dip
CL30_subset_dip <- hitsort_part_CL30[grep("dip", hitsort_part_CL30$X1, ), ]
CL30_subset_dip <- CL30_subset_dip[grep("dip", CL30_subset_dip$X2, ), ]
CL30_subset_dip <- subset(CL30_subset_dip, X10<99.99)


#tom
CL30_subset_tom <- hitsort_part_CL30[grep("tom", hitsort_part_CL30$X1, ), ]
CL30_subset_tom <- CL30_subset_tom[grep("tom", CL30_subset_tom$X2, ), ]
CL30_subset_tom <- subset(CL30_subset_tom, X10<99.99)

#rub
CL30_subset_rub <- hitsort_part_CL30[grep("rub", hitsort_part_CL30$X1, ), ]
CL30_subset_rub <- CL30_subset_rub[grep("rub", CL30_subset_rub$X2, ), ]
CL30_subset_rub <- subset(CL30_subset_rub, X10<99.99)


CL30_subset_DE5<-ggplot(CL30_subset_DE5, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL30_subset_DE5")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL30_subset_DE9<-ggplot(CL30_subset_DE9, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL30_subset_DE9")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL30_subset_791<-ggplot(CL30_subset_791, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL30_subset_791")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL30_subset_qua<-ggplot(CL30_subset_qua, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL30_subset_qua")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL30_subset_cry<-ggplot(CL30_subset_cry, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL30_subset_cry")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL30_subset_cal<-ggplot(CL30_subset_cal, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL30_subset_cal")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL30_subset_cra<-ggplot(CL30_subset_cra, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL30_subset_cra")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL30_subset_dip<-ggplot(CL30_subset_dip, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL30_subset_dip")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL30_subset_tom<-ggplot(CL30_subset_tom, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL30_subset_tom")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL30_subset_rub<-ggplot(CL30_subset_rub, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL30_subset_rub")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL30_subset_tun<-ggplot(CL30_subset_tun, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL30_subset_tun")+
  theme_minimal()+ expand_limits(x=c(90,100))

##Heterogenity
library(readr)
hitsort_part_CL39 <- read_delim("C:/Users/Jaume/Nextcloud/Documents/Pol/Phoradendron/Repeat explorer/heterogenity/hitsort_part_CL39.csv", 
                                delim = "\t", escape_double = FALSE, 
                                col_names = FALSE, trim_ws = TRUE)


library(data.table)
library(ggplot2)

#tun
CL39_subset_tun <- hitsort_part_CL39[grep("tun", hitsort_part_CL39$X1, ), ]
CL39_subset_tun <- CL39_subset_tun[grep("tun", CL39_subset_tun$X2, ), ]
CL39_subset_tun <- subset(CL39_subset_tun, X10<99.99)

#cry
CL39_subset_cry <- hitsort_part_CL39[grep("cry", hitsort_part_CL39$X1, ), ]
CL39_subset_cry <- CL39_subset_cry[grep("cry", CL39_subset_cry$X2, ), ]
CL39_subset_cry <- subset(CL39_subset_cry, X10<99.99)

#DE5
CL39_subset_DE5 <- hitsort_part_CL39[grep("DE5", hitsort_part_CL39$X1, ), ]
CL39_subset_DE5 <- CL39_subset_DE5[grep("DE5", CL39_subset_DE5$X2, ), ]
CL39_subset_DE5 <- subset(CL39_subset_DE5, X10<99.99)

#DE9
CL39_subset_DE9 <- hitsort_part_CL39[grep("DE9", hitsort_part_CL39$X1, ), ]
CL39_subset_DE9 <- CL39_subset_DE9[grep("DE9", CL39_subset_DE9$X2, ), ]
CL39_subset_DE9 <- subset(CL39_subset_DE9, X10<99.99)

#791
CL39_subset_791 <- hitsort_part_CL39[startsWith(hitsort_part_CL39$X1, '791'),]
CL39_subset_791 <- CL39_subset_791[startsWith(CL39_subset_791$X2, '791'),]
CL39_subset_791 <- subset(CL39_subset_791, X10<99.99)

#qua
CL39_subset_qua <- hitsort_part_CL39[grep("qua", hitsort_part_CL39$X1, ), ]
CL39_subset_qua <- CL39_subset_qua[grep("qua", CL39_subset_qua$X2, ), ]
CL39_subset_qua <- subset(CL39_subset_qua, X10<99.99)

#cal
CL39_subset_cal <- hitsort_part_CL39[grep("cal", hitsort_part_CL39$X1, ), ]
CL39_subset_cal <- CL39_subset_cal[grep("cal", CL39_subset_cal$X2, ), ]
CL39_subset_cal <- subset(CL39_subset_cal, X10<99.99)

#cra
CL39_subset_cra <- hitsort_part_CL39[grep("cra", hitsort_part_CL39$X1, ), ]
CL39_subset_cra <- CL39_subset_cra[grep("cra", CL39_subset_cra$X2, ), ]
CL39_subset_cra <- subset(CL39_subset_cra, X10<99.99)

#dip
CL39_subset_dip <- hitsort_part_CL39[grep("dip", hitsort_part_CL39$X1, ), ]
CL39_subset_dip <- CL39_subset_dip[grep("dip", CL39_subset_dip$X2, ), ]
CL39_subset_dip <- subset(CL39_subset_dip, X10<99.99)


#tom
CL39_subset_tom <- hitsort_part_CL39[grep("tom", hitsort_part_CL39$X1, ), ]
CL39_subset_tom <- CL39_subset_tom[grep("tom", CL39_subset_tom$X2, ), ]
CL39_subset_tom <- subset(CL39_subset_tom, X10<99.99)

#rub
CL39_subset_rub <- hitsort_part_CL39[grep("rub", hitsort_part_CL39$X1, ), ]
CL39_subset_rub <- CL39_subset_rub[grep("rub", CL39_subset_rub$X2, ), ]
CL39_subset_rub <- subset(CL39_subset_rub, X10<99.99)


CL39_subset_DE5<-ggplot(CL39_subset_DE5, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL39_subset_DE5")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL39_subset_DE9<-ggplot(CL39_subset_DE9, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL39_subset_DE9")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL39_subset_791<-ggplot(CL39_subset_791, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL39_subset_791")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL39_subset_qua<-ggplot(CL39_subset_qua, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL39_subset_qua")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL39_subset_cry<-ggplot(CL39_subset_cry, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL39_subset_cry")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL39_subset_cal<-ggplot(CL39_subset_cal, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL39_subset_cal")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL39_subset_cra<-ggplot(CL39_subset_cra, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL39_subset_cra")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL39_subset_dip<-ggplot(CL39_subset_dip, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL39_subset_dip")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL39_subset_tom<-ggplot(CL39_subset_tom, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL39_subset_tom")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL39_subset_rub<-ggplot(CL39_subset_rub, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL39_subset_rub")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL39_subset_tun<-ggplot(CL39_subset_tun, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL39_subset_tun")+
  theme_minimal()+ expand_limits(x=c(90,100))

##Heterogenity
library(readr)
hitsort_part_CL38 <- read_delim("C:/Users/Jaume/Nextcloud/Documents/Pol/Phoradendron/Repeat explorer/heterogenity/hitsort_part_CL38.csv", 
                                delim = "\t", escape_double = FALSE, 
                                col_names = FALSE, trim_ws = TRUE)


library(data.table)
library(ggplot2)

#tun
CL38_subset_tun <- hitsort_part_CL38[grep("tun", hitsort_part_CL38$X1, ), ]
CL38_subset_tun <- CL38_subset_tun[grep("tun", CL38_subset_tun$X2, ), ]
CL38_subset_tun <- subset(CL38_subset_tun, X10<99.99)

#cry
CL38_subset_cry <- hitsort_part_CL38[grep("cry", hitsort_part_CL38$X1, ), ]
CL38_subset_cry <- CL38_subset_cry[grep("cry", CL38_subset_cry$X2, ), ]
CL38_subset_cry <- subset(CL38_subset_cry, X10<99.99)

#DE5
CL38_subset_DE5 <- hitsort_part_CL38[grep("DE5", hitsort_part_CL38$X1, ), ]
CL38_subset_DE5 <- CL38_subset_DE5[grep("DE5", CL38_subset_DE5$X2, ), ]
CL38_subset_DE5 <- subset(CL38_subset_DE5, X10<99.99)

#DE9
CL38_subset_DE9 <- hitsort_part_CL38[grep("DE9", hitsort_part_CL38$X1, ), ]
CL38_subset_DE9 <- CL38_subset_DE9[grep("DE9", CL38_subset_DE9$X2, ), ]
CL38_subset_DE9 <- subset(CL38_subset_DE9, X10<99.99)

#791
CL38_subset_791 <- hitsort_part_CL38[startsWith(hitsort_part_CL38$X1, '791'),]
CL38_subset_791 <- CL38_subset_791[startsWith(CL38_subset_791$X2, '791'),]
CL38_subset_791 <- subset(CL38_subset_791, X10<99.99)

#qua
CL38_subset_qua <- hitsort_part_CL38[grep("qua", hitsort_part_CL38$X1, ), ]
CL38_subset_qua <- CL38_subset_qua[grep("qua", CL38_subset_qua$X2, ), ]
CL38_subset_qua <- subset(CL38_subset_qua, X10<99.99)

#cal
CL38_subset_cal <- hitsort_part_CL38[grep("cal", hitsort_part_CL38$X1, ), ]
CL38_subset_cal <- CL38_subset_cal[grep("cal", CL38_subset_cal$X2, ), ]
CL38_subset_cal <- subset(CL38_subset_cal, X10<99.99)

#cra
CL38_subset_cra <- hitsort_part_CL38[grep("cra", hitsort_part_CL38$X1, ), ]
CL38_subset_cra <- CL38_subset_cra[grep("cra", CL38_subset_cra$X2, ), ]
CL38_subset_cra <- subset(CL38_subset_cra, X10<99.99)

#dip
CL38_subset_dip <- hitsort_part_CL38[grep("dip", hitsort_part_CL38$X1, ), ]
CL38_subset_dip <- CL38_subset_dip[grep("dip", CL38_subset_dip$X2, ), ]
CL38_subset_dip <- subset(CL38_subset_dip, X10<99.99)


#tom
CL38_subset_tom <- hitsort_part_CL38[grep("tom", hitsort_part_CL38$X1, ), ]
CL38_subset_tom <- CL38_subset_tom[grep("tom", CL38_subset_tom$X2, ), ]
CL38_subset_tom <- subset(CL38_subset_tom, X10<99.99)

#rub
CL38_subset_rub <- hitsort_part_CL38[grep("rub", hitsort_part_CL38$X1, ), ]
CL38_subset_rub <- CL38_subset_rub[grep("rub", CL38_subset_rub$X2, ), ]
CL38_subset_rub <- subset(CL38_subset_rub, X10<99.99)


CL38_subset_DE5<-ggplot(CL38_subset_DE5, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL38_subset_DE5")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL38_subset_DE9<-ggplot(CL38_subset_DE9, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL38_subset_DE9")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL38_subset_791<-ggplot(CL38_subset_791, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL38_subset_791")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL38_subset_qua<-ggplot(CL38_subset_qua, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL38_subset_qua")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL38_subset_cry<-ggplot(CL38_subset_cry, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL38_subset_cry")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL38_subset_cal<-ggplot(CL38_subset_cal, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL38_subset_cal")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL38_subset_cra<-ggplot(CL38_subset_cra, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL38_subset_cra")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL38_subset_dip<-ggplot(CL38_subset_dip, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL38_subset_dip")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL38_subset_tom<-ggplot(CL38_subset_tom, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL38_subset_tom")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL38_subset_rub<-ggplot(CL38_subset_rub, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL38_subset_rub")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL38_subset_tun<-ggplot(CL38_subset_tun, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL38_subset_tun")+
  theme_minimal()+ expand_limits(x=c(90,100))


####means_heterogenity
means_CL38_names<-c("DE5",
                    "DE9",
                    "rub",
                    "791",
                    "cra",
                    "cry",
                    "dip",
                    "qua",
                    "cal",
                    "tun",
                    "tom"
)
means_CL38_values<-c(mean(CL38_subset_DE5$X10),
                     mean(CL38_subset_DE9$X10),
                     mean(CL38_subset_rub$X10),
                     mean(CL38_subset_791$X10),
                     mean(CL38_subset_cra$X10),
                     mean(CL38_subset_cry$X10),
                     mean(CL38_subset_dip$X10),
                     mean(CL38_subset_qua$X10),
                     mean(CL38_subset_cal$X10),
                     mean(CL38_subset_tun$X10),
                     mean(CL38_subset_tom$X10)
)


means_CL38<-data.frame(means_CL38_names,means_CL38_values)
means_CL38


##Heterogenity
library(readr)
hitsort_part_CL290 <- read_delim("C:/Users/Jaume/Nextcloud/Documents/Pol/Phoradendron/Repeat explorer/heterogenity/hitsort_part_CL290.csv", 
                                 delim = "\t", escape_double = FALSE, 
                                 col_names = FALSE, trim_ws = TRUE)


library(data.table)
library(ggplot2)

#tun
CL290_subset_tun <- hitsort_part_CL290[grep("tun", hitsort_part_CL290$X1, ), ]
CL290_subset_tun <- CL290_subset_tun[grep("tun", CL290_subset_tun$X2, ), ]
CL290_subset_tun <- subset(CL290_subset_tun, X10<99.99)

#cry
CL290_subset_cry <- hitsort_part_CL290[grep("cry", hitsort_part_CL290$X1, ), ]
CL290_subset_cry <- CL290_subset_cry[grep("cry", CL290_subset_cry$X2, ), ]
CL290_subset_cry <- subset(CL290_subset_cry, X10<99.99)

#DE5
CL290_subset_DE5 <- hitsort_part_CL290[grep("DE5", hitsort_part_CL290$X1, ), ]
CL290_subset_DE5 <- CL290_subset_DE5[grep("DE5", CL290_subset_DE5$X2, ), ]
CL290_subset_DE5 <- subset(CL290_subset_DE5, X10<99.99)

#DE9
CL290_subset_DE9 <- hitsort_part_CL290[grep("DE9", hitsort_part_CL290$X1, ), ]
CL290_subset_DE9 <- CL290_subset_DE9[grep("DE9", CL290_subset_DE9$X2, ), ]
CL290_subset_DE9 <- subset(CL290_subset_DE9, X10<99.99)

#791
CL290_subset_791 <- hitsort_part_CL290[startsWith(hitsort_part_CL290$X1, '791'),]
CL290_subset_791 <- CL290_subset_791[startsWith(CL290_subset_791$X2, '791'),]
CL290_subset_791 <- subset(CL290_subset_791, X10<99.99)

#qua
CL290_subset_qua <- hitsort_part_CL290[grep("qua", hitsort_part_CL290$X1, ), ]
CL290_subset_qua <- CL290_subset_qua[grep("qua", CL290_subset_qua$X2, ), ]
CL290_subset_qua <- subset(CL290_subset_qua, X10<99.99)

#cal
CL290_subset_cal <- hitsort_part_CL290[grep("cal", hitsort_part_CL290$X1, ), ]
CL290_subset_cal <- CL290_subset_cal[grep("cal", CL290_subset_cal$X2, ), ]
CL290_subset_cal <- subset(CL290_subset_cal, X10<99.99)

#cra
CL290_subset_cra <- hitsort_part_CL290[grep("cra", hitsort_part_CL290$X1, ), ]
CL290_subset_cra <- CL290_subset_cra[grep("cra", CL290_subset_cra$X2, ), ]
CL290_subset_cra <- subset(CL290_subset_cra, X10<99.99)

#dip
CL290_subset_dip <- hitsort_part_CL290[grep("dip", hitsort_part_CL290$X1, ), ]
CL290_subset_dip <- CL290_subset_dip[grep("dip", CL290_subset_dip$X2, ), ]
CL290_subset_dip <- subset(CL290_subset_dip, X10<99.99)


#tom
CL290_subset_tom <- hitsort_part_CL290[grep("tom", hitsort_part_CL290$X1, ), ]
CL290_subset_tom <- CL290_subset_tom[grep("tom", CL290_subset_tom$X2, ), ]
CL290_subset_tom <- subset(CL290_subset_tom, X10<99.99)

#rub
CL290_subset_rub <- hitsort_part_CL290[grep("rub", hitsort_part_CL290$X1, ), ]
CL290_subset_rub <- CL290_subset_rub[grep("rub", CL290_subset_rub$X2, ), ]
CL290_subset_rub <- subset(CL290_subset_rub, X10<99.99)


CL290_subset_DE5<-ggplot(CL290_subset_DE5, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL290_subset_DE5")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL290_subset_DE9<-ggplot(CL290_subset_DE9, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL290_subset_DE9")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL290_subset_791<-ggplot(CL290_subset_791, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL290_subset_791")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL290_subset_qua<-ggplot(CL290_subset_qua, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL290_subset_qua")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL290_subset_cry<-ggplot(CL290_subset_cry, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL290_subset_cry")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL290_subset_cal<-ggplot(CL290_subset_cal, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL290_subset_cal")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL290_subset_cra<-ggplot(CL290_subset_cra, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL290_subset_cra")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL290_subset_dip<-ggplot(CL290_subset_dip, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL290_subset_dip")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL290_subset_tom<-ggplot(CL290_subset_tom, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL290_subset_tom")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL290_subset_rub<-ggplot(CL290_subset_rub, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL290_subset_rub")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL290_subset_tun<-ggplot(CL290_subset_tun, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL290_subset_tun")+
  theme_minimal()+ expand_limits(x=c(90,100))



##Heterogenity
library(readr)
hitsort_part_CL6 <- read_delim("C:/Users/Jaume/Nextcloud/Documents/Pol/Phoradendron/Repeat explorer/heterogenity/hitsort_part_CL6.csv", 
                               delim = "\t", escape_double = FALSE, 
                               col_names = FALSE, trim_ws = TRUE)


library(data.table)
library(ggplot2)

#tun
CL6_subset_tun <- hitsort_part_CL6[grep("tun", hitsort_part_CL6$X1, ), ]
CL6_subset_tun <- CL6_subset_tun[grep("tun", CL6_subset_tun$X2, ), ]
CL6_subset_tun <- subset(CL6_subset_tun, X10<99.99)

#cry
CL6_subset_cry <- hitsort_part_CL6[grep("cry", hitsort_part_CL6$X1, ), ]
CL6_subset_cry <- CL6_subset_cry[grep("cry", CL6_subset_cry$X2, ), ]
CL6_subset_cry <- subset(CL6_subset_cry, X10<99.99)

#DE5
CL6_subset_DE5 <- hitsort_part_CL6[grep("DE5", hitsort_part_CL6$X1, ), ]
CL6_subset_DE5 <- CL6_subset_DE5[grep("DE5", CL6_subset_DE5$X2, ), ]
CL6_subset_DE5 <- subset(CL6_subset_DE5, X10<99.99)

#DE9
CL6_subset_DE9 <- hitsort_part_CL6[grep("DE9", hitsort_part_CL6$X1, ), ]
CL6_subset_DE9 <- CL6_subset_DE9[grep("DE9", CL6_subset_DE9$X2, ), ]
CL6_subset_DE9 <- subset(CL6_subset_DE9, X10<99.99)

#791
CL6_subset_791 <- hitsort_part_CL6[startsWith(hitsort_part_CL6$X1, '791'),]
CL6_subset_791 <- CL6_subset_791[startsWith(CL6_subset_791$X2, '791'),]
CL6_subset_791 <- subset(CL6_subset_791, X10<99.99)

#qua
CL6_subset_qua <- hitsort_part_CL6[grep("qua", hitsort_part_CL6$X1, ), ]
CL6_subset_qua <- CL6_subset_qua[grep("qua", CL6_subset_qua$X2, ), ]
CL6_subset_qua <- subset(CL6_subset_qua, X10<99.99)

#cal
CL6_subset_cal <- hitsort_part_CL6[grep("cal", hitsort_part_CL6$X1, ), ]
CL6_subset_cal <- CL6_subset_cal[grep("cal", CL6_subset_cal$X2, ), ]
CL6_subset_cal <- subset(CL6_subset_cal, X10<99.99)

#cra
CL6_subset_cra <- hitsort_part_CL6[grep("cra", hitsort_part_CL6$X1, ), ]
CL6_subset_cra <- CL6_subset_cra[grep("cra", CL6_subset_cra$X2, ), ]
CL6_subset_cra <- subset(CL6_subset_cra, X10<99.99)

#dip
CL6_subset_dip <- hitsort_part_CL6[grep("dip", hitsort_part_CL6$X1, ), ]
CL6_subset_dip <- CL6_subset_dip[grep("dip", CL6_subset_dip$X2, ), ]
CL6_subset_dip <- subset(CL6_subset_dip, X10<99.99)


#tom
CL6_subset_tom <- hitsort_part_CL6[grep("tom", hitsort_part_CL6$X1, ), ]
CL6_subset_tom <- CL6_subset_tom[grep("tom", CL6_subset_tom$X2, ), ]
CL6_subset_tom <- subset(CL6_subset_tom, X10<99.99)

#rub
CL6_subset_rub <- hitsort_part_CL6[grep("rub", hitsort_part_CL6$X1, ), ]
CL6_subset_rub <- CL6_subset_rub[grep("rub", CL6_subset_rub$X2, ), ]
CL6_subset_rub <- subset(CL6_subset_rub, X10<99.99)


CL6_subset_DE5<-ggplot(CL6_subset_DE5, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL6_subset_DE5")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL6_subset_DE9<-ggplot(CL6_subset_DE9, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL6_subset_DE9")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL6_subset_791<-ggplot(CL6_subset_791, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL6_subset_791")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL6_subset_qua<-ggplot(CL6_subset_qua, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL6_subset_qua")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL6_subset_cry<-ggplot(CL6_subset_cry, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL6_subset_cry")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL6_subset_cal<-ggplot(CL6_subset_cal, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL6_subset_cal")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL6_subset_cra<-ggplot(CL6_subset_cra, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL6_subset_cra")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL6_subset_dip<-ggplot(CL6_subset_dip, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL6_subset_dip")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL6_subset_tom<-ggplot(CL6_subset_tom, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL6_subset_tom")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL6_subset_rub<-ggplot(CL6_subset_rub, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL6_subset_rub")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL6_subset_tun<-ggplot(CL6_subset_tun, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL6_subset_tun")+
  theme_minimal()+ expand_limits(x=c(90,100))


####means_heterogenity
means_CL6_names<-c("DE5",
                   "DE9",
                   "rub",
                   "791",
                   "cra",
                   "cry",
                   "dip",
                   "qua",
                   "cal",
                   "tun",
                   "tom"
)
means_CL6_values<-c(mean(CL6_subset_DE5$X10),
                    mean(CL6_subset_DE9$X10),
                    mean(CL6_subset_rub$X10),
                    mean(CL6_subset_791$X10),
                    mean(CL6_subset_cra$X10),
                    mean(CL6_subset_cry$X10),
                    mean(CL6_subset_dip$X10),
                    mean(CL6_subset_qua$X10),
                    mean(CL6_subset_cal$X10),
                    mean(CL6_subset_tun$X10),
                    mean(CL6_subset_tom$X10)
)


means_CL6<-data.frame(means_CL6_names,means_CL6_values)
means_CL6
##Heterogenity
library(readr)
hitsort_part_CL16 <- read_delim("C:/Users/Jaume/Nextcloud/Documents/Pol/Phoradendron/Repeat explorer/heterogenity/hitsort_part_CL16.csv", 
                                delim = "\t", escape_double = FALSE, 
                                col_names = FALSE, trim_ws = TRUE)


library(data.table)
library(ggplot2)

#tun
CL16_subset_tun <- hitsort_part_CL16[grep("tun", hitsort_part_CL16$X1, ), ]
CL16_subset_tun <- CL16_subset_tun[grep("tun", CL16_subset_tun$X2, ), ]
CL16_subset_tun <- subset(CL16_subset_tun, X10<99.99)

#cry
CL16_subset_cry <- hitsort_part_CL16[grep("cry", hitsort_part_CL16$X1, ), ]
CL16_subset_cry <- CL16_subset_cry[grep("cry", CL16_subset_cry$X2, ), ]
CL16_subset_cry <- subset(CL16_subset_cry, X10<99.99)

#DE5
CL16_subset_DE5 <- hitsort_part_CL16[grep("DE5", hitsort_part_CL16$X1, ), ]
CL16_subset_DE5 <- CL16_subset_DE5[grep("DE5", CL16_subset_DE5$X2, ), ]
CL16_subset_DE5 <- subset(CL16_subset_DE5, X10<99.99)

#DE9
CL16_subset_DE9 <- hitsort_part_CL16[grep("DE9", hitsort_part_CL16$X1, ), ]
CL16_subset_DE9 <- CL16_subset_DE9[grep("DE9", CL16_subset_DE9$X2, ), ]
CL16_subset_DE9 <- subset(CL16_subset_DE9, X10<99.99)

#791
CL16_subset_791 <- hitsort_part_CL16[startsWith(hitsort_part_CL16$X1, '791'),]
CL16_subset_791 <- CL16_subset_791[startsWith(CL16_subset_791$X2, '791'),]
CL16_subset_791 <- subset(CL16_subset_791, X10<99.99)

#qua
CL16_subset_qua <- hitsort_part_CL16[grep("qua", hitsort_part_CL16$X1, ), ]
CL16_subset_qua <- CL16_subset_qua[grep("qua", CL16_subset_qua$X2, ), ]
CL16_subset_qua <- subset(CL16_subset_qua, X10<99.99)

#cal
CL16_subset_cal <- hitsort_part_CL16[grep("cal", hitsort_part_CL16$X1, ), ]
CL16_subset_cal <- CL16_subset_cal[grep("cal", CL16_subset_cal$X2, ), ]
CL16_subset_cal <- subset(CL16_subset_cal, X10<99.99)

#cra
CL16_subset_cra <- hitsort_part_CL16[grep("cra", hitsort_part_CL16$X1, ), ]
CL16_subset_cra <- CL16_subset_cra[grep("cra", CL16_subset_cra$X2, ), ]
CL16_subset_cra <- subset(CL16_subset_cra, X10<99.99)

#dip
CL16_subset_dip <- hitsort_part_CL16[grep("dip", hitsort_part_CL16$X1, ), ]
CL16_subset_dip <- CL16_subset_dip[grep("dip", CL16_subset_dip$X2, ), ]
CL16_subset_dip <- subset(CL16_subset_dip, X10<99.99)


#tom
CL16_subset_tom <- hitsort_part_CL16[grep("tom", hitsort_part_CL16$X1, ), ]
CL16_subset_tom <- CL16_subset_tom[grep("tom", CL16_subset_tom$X2, ), ]
CL16_subset_tom <- subset(CL16_subset_tom, X10<99.99)

#rub
CL16_subset_rub <- hitsort_part_CL16[grep("rub", hitsort_part_CL16$X1, ), ]
CL16_subset_rub <- CL16_subset_rub[grep("rub", CL16_subset_rub$X2, ), ]
CL16_subset_rub <- subset(CL16_subset_rub, X10<99.99)


CL16_subset_DE5<-ggplot(CL16_subset_DE5, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL16_subset_DE5")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL16_subset_DE9<-ggplot(CL16_subset_DE9, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL16_subset_DE9")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL16_subset_791<-ggplot(CL16_subset_791, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL16_subset_791")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL16_subset_qua<-ggplot(CL16_subset_qua, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL16_subset_qua")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL16_subset_cry<-ggplot(CL16_subset_cry, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL16_subset_cry")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL16_subset_cal<-ggplot(CL16_subset_cal, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL16_subset_cal")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL16_subset_cra<-ggplot(CL16_subset_cra, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL16_subset_cra")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL16_subset_dip<-ggplot(CL16_subset_dip, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL16_subset_dip")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL16_subset_tom<-ggplot(CL16_subset_tom, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL16_subset_tom")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL16_subset_rub<-ggplot(CL16_subset_rub, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL16_subset_rub")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL16_subset_tun<-ggplot(CL16_subset_tun, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL16_subset_tun")+
  theme_minimal()+ expand_limits(x=c(90,100))


####means_heterogenity
means_CL16_names<-c("DE5",
                    "DE9",
                    "rub",
                    "791",
                    "cra",
                    "cry",
                    "dip",
                    "qua",
                    "cal",
                    "tun",
                    "tom"
)
means_CL16_values<-c(mean(CL16_subset_DE5$X10),
                     mean(CL16_subset_DE9$X10),
                     mean(CL16_subset_rub$X10),
                     mean(CL16_subset_791$X10),
                     mean(CL16_subset_cra$X10),
                     mean(CL16_subset_cry$X10),
                     mean(CL16_subset_dip$X10),
                     mean(CL16_subset_qua$X10),
                     mean(CL16_subset_cal$X10),
                     mean(CL16_subset_tun$X10),
                     mean(CL16_subset_tom$X10)
)


means_CL16<-data.frame(means_CL16_names,means_CL16_values)
means_CL16




##Heterogenity
library(readr)
hitsort_part_CL44 <- read_delim("C:/Users/Jaume/Nextcloud/Documents/Pol/Phoradendron/Repeat explorer/heterogenity/hitsort_part_CL44.csv", 
                                delim = "\t", escape_double = FALSE, 
                                col_names = FALSE, trim_ws = TRUE)


library(data.table)
library(ggplot2)

#tun
CL44_subset_tun <- hitsort_part_CL44[grep("tun", hitsort_part_CL44$X1, ), ]
CL44_subset_tun <- CL44_subset_tun[grep("tun", CL44_subset_tun$X2, ), ]
CL44_subset_tun <- subset(CL44_subset_tun, X10<99.99)

#cry
CL44_subset_cry <- hitsort_part_CL44[grep("cry", hitsort_part_CL44$X1, ), ]
CL44_subset_cry <- CL44_subset_cry[grep("cry", CL44_subset_cry$X2, ), ]
CL44_subset_cry <- subset(CL44_subset_cry, X10<99.99)

#DE5
CL44_subset_DE5 <- hitsort_part_CL44[grep("DE5", hitsort_part_CL44$X1, ), ]
CL44_subset_DE5 <- CL44_subset_DE5[grep("DE5", CL44_subset_DE5$X2, ), ]
CL44_subset_DE5 <- subset(CL44_subset_DE5, X10<99.99)

#DE9
CL44_subset_DE9 <- hitsort_part_CL44[grep("DE9", hitsort_part_CL44$X1, ), ]
CL44_subset_DE9 <- CL44_subset_DE9[grep("DE9", CL44_subset_DE9$X2, ), ]
CL44_subset_DE9 <- subset(CL44_subset_DE9, X10<99.99)

#791
CL44_subset_791 <- hitsort_part_CL44[startsWith(hitsort_part_CL44$X1, '791'),]
CL44_subset_791 <- CL44_subset_791[startsWith(CL44_subset_791$X2, '791'),]
CL44_subset_791 <- subset(CL44_subset_791, X10<99.99)

#qua
CL44_subset_qua <- hitsort_part_CL44[grep("qua", hitsort_part_CL44$X1, ), ]
CL44_subset_qua <- CL44_subset_qua[grep("qua", CL44_subset_qua$X2, ), ]
CL44_subset_qua <- subset(CL44_subset_qua, X10<99.99)

#cal
CL44_subset_cal <- hitsort_part_CL44[grep("cal", hitsort_part_CL44$X1, ), ]
CL44_subset_cal <- CL44_subset_cal[grep("cal", CL44_subset_cal$X2, ), ]
CL44_subset_cal <- subset(CL44_subset_cal, X10<99.99)

#cra
CL44_subset_cra <- hitsort_part_CL44[grep("cra", hitsort_part_CL44$X1, ), ]
CL44_subset_cra <- CL44_subset_cra[grep("cra", CL44_subset_cra$X2, ), ]
CL44_subset_cra <- subset(CL44_subset_cra, X10<99.99)

#dip
CL44_subset_dip <- hitsort_part_CL44[grep("dip", hitsort_part_CL44$X1, ), ]
CL44_subset_dip <- CL44_subset_dip[grep("dip", CL44_subset_dip$X2, ), ]
CL44_subset_dip <- subset(CL44_subset_dip, X10<99.99)


#tom
CL44_subset_tom <- hitsort_part_CL44[grep("tom", hitsort_part_CL44$X1, ), ]
CL44_subset_tom <- CL44_subset_tom[grep("tom", CL44_subset_tom$X2, ), ]
CL44_subset_tom <- subset(CL44_subset_tom, X10<99.99)

#rub
CL44_subset_rub <- hitsort_part_CL44[grep("rub", hitsort_part_CL44$X1, ), ]
CL44_subset_rub <- CL44_subset_rub[grep("rub", CL44_subset_rub$X2, ), ]
CL44_subset_rub <- subset(CL44_subset_rub, X10<99.99)


CL44_subset_DE5<-ggplot(CL44_subset_DE5, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL44_subset_DE5")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL44_subset_DE9<-ggplot(CL44_subset_DE9, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL44_subset_DE9")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL44_subset_791<-ggplot(CL44_subset_791, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL44_subset_791")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL44_subset_qua<-ggplot(CL44_subset_qua, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL44_subset_qua")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL44_subset_cry<-ggplot(CL44_subset_cry, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL44_subset_cry")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL44_subset_cal<-ggplot(CL44_subset_cal, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL44_subset_cal")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL44_subset_cra<-ggplot(CL44_subset_cra, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL44_subset_cra")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL44_subset_dip<-ggplot(CL44_subset_dip, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL44_subset_dip")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL44_subset_tom<-ggplot(CL44_subset_tom, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL44_subset_tom")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL44_subset_rub<-ggplot(CL44_subset_rub, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL44_subset_rub")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL44_subset_tun<-ggplot(CL44_subset_tun, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL44_subset_tun")+
  theme_minimal()+ expand_limits(x=c(90,100))



####means_heterogenity
means_CL44_names<-c("DE5",
                    "DE9",
                    "rub",
                    "791",
                    "cra",
                    "cry",
                    "dip",
                    "qua",
                    "cal",
                    "tun",
                    "tom"
)
means_CL44_values<-c(mean(CL44_subset_DE5$X10),
                     mean(CL44_subset_DE9$X10),
                     mean(CL44_subset_rub$X10),
                     mean(CL44_subset_791$X10),
                     mean(CL44_subset_cra$X10),
                     mean(CL44_subset_cry$X10),
                     mean(CL44_subset_dip$X10),
                     mean(CL44_subset_qua$X10),
                     mean(CL44_subset_cal$X10),
                     mean(CL44_subset_tun$X10),
                     mean(CL44_subset_tom$X10)
)


means_CL44<-data.frame(means_CL44_names,means_CL44_values)
means_CL44


##Heterogenity
library(readr)
hitsort_part_CL49 <- read_delim("C:/Users/Jaume/Nextcloud/Documents/Pol/Phoradendron/Repeat explorer/heterogenity/hitsort_part_CL49.csv", 
                                delim = "\t", escape_double = FALSE, 
                                col_names = FALSE, trim_ws = TRUE)


library(data.table)
library(ggplot2)

#tun
CL49_subset_tun <- hitsort_part_CL49[grep("tun", hitsort_part_CL49$X1, ), ]
CL49_subset_tun <- CL49_subset_tun[grep("tun", CL49_subset_tun$X2, ), ]
CL49_subset_tun <- subset(CL49_subset_tun, X10<99.99)

#cry
CL49_subset_cry <- hitsort_part_CL49[grep("cry", hitsort_part_CL49$X1, ), ]
CL49_subset_cry <- CL49_subset_cry[grep("cry", CL49_subset_cry$X2, ), ]
CL49_subset_cry <- subset(CL49_subset_cry, X10<99.99)

#DE5
CL49_subset_DE5 <- hitsort_part_CL49[grep("DE5", hitsort_part_CL49$X1, ), ]
CL49_subset_DE5 <- CL49_subset_DE5[grep("DE5", CL49_subset_DE5$X2, ), ]
CL49_subset_DE5 <- subset(CL49_subset_DE5, X10<99.99)

#DE9
CL49_subset_DE9 <- hitsort_part_CL49[grep("DE9", hitsort_part_CL49$X1, ), ]
CL49_subset_DE9 <- CL49_subset_DE9[grep("DE9", CL49_subset_DE9$X2, ), ]
CL49_subset_DE9 <- subset(CL49_subset_DE9, X10<99.99)

#791
CL49_subset_791 <- hitsort_part_CL49[startsWith(hitsort_part_CL49$X1, '791'),]
CL49_subset_791 <- CL49_subset_791[startsWith(CL49_subset_791$X2, '791'),]
CL49_subset_791 <- subset(CL49_subset_791, X10<99.99)

#qua
CL49_subset_qua <- hitsort_part_CL49[grep("qua", hitsort_part_CL49$X1, ), ]
CL49_subset_qua <- CL49_subset_qua[grep("qua", CL49_subset_qua$X2, ), ]
CL49_subset_qua <- subset(CL49_subset_qua, X10<99.99)

#cal
CL49_subset_cal <- hitsort_part_CL49[grep("cal", hitsort_part_CL49$X1, ), ]
CL49_subset_cal <- CL49_subset_cal[grep("cal", CL49_subset_cal$X2, ), ]
CL49_subset_cal <- subset(CL49_subset_cal, X10<99.99)

#cra
CL49_subset_cra <- hitsort_part_CL49[grep("cra", hitsort_part_CL49$X1, ), ]
CL49_subset_cra <- CL49_subset_cra[grep("cra", CL49_subset_cra$X2, ), ]
CL49_subset_cra <- subset(CL49_subset_cra, X10<99.99)

#dip
CL49_subset_dip <- hitsort_part_CL49[grep("dip", hitsort_part_CL49$X1, ), ]
CL49_subset_dip <- CL49_subset_dip[grep("dip", CL49_subset_dip$X2, ), ]
CL49_subset_dip <- subset(CL49_subset_dip, X10<99.99)


#tom
CL49_subset_tom <- hitsort_part_CL49[grep("tom", hitsort_part_CL49$X1, ), ]
CL49_subset_tom <- CL49_subset_tom[grep("tom", CL49_subset_tom$X2, ), ]
CL49_subset_tom <- subset(CL49_subset_tom, X10<99.99)

#rub
CL49_subset_rub <- hitsort_part_CL49[grep("rub", hitsort_part_CL49$X1, ), ]
CL49_subset_rub <- CL49_subset_rub[grep("rub", CL49_subset_rub$X2, ), ]
CL49_subset_rub <- subset(CL49_subset_rub, X10<99.99)


CL49_subset_DE5<-ggplot(CL49_subset_DE5, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL49_subset_DE5")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL49_subset_DE9<-ggplot(CL49_subset_DE9, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL49_subset_DE9")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL49_subset_791<-ggplot(CL49_subset_791, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL49_subset_791")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL49_subset_qua<-ggplot(CL49_subset_qua, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL49_subset_qua")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL49_subset_cry<-ggplot(CL49_subset_cry, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL49_subset_cry")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL49_subset_cal<-ggplot(CL49_subset_cal, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL49_subset_cal")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL49_subset_cra<-ggplot(CL49_subset_cra, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL49_subset_cra")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL49_subset_dip<-ggplot(CL49_subset_dip, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL49_subset_dip")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL49_subset_tom<-ggplot(CL49_subset_tom, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL49_subset_tom")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL49_subset_rub<-ggplot(CL49_subset_rub, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL49_subset_rub")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL49_subset_tun<-ggplot(CL49_subset_tun, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL49_subset_tun")+
  theme_minimal()+ expand_limits(x=c(90,100))


##Heterogenity
library(readr)
hitsort_part_CL57 <- read_delim("C:/Users/Jaume/Nextcloud/Documents/Pol/Phoradendron/Repeat explorer/heterogenity/hitsort_part_CL57.csv", 
                                delim = "\t", escape_double = FALSE, 
                                col_names = FALSE, trim_ws = TRUE)


library(data.table)
library(ggplot2)

#tun
CL57_subset_tun <- hitsort_part_CL57[grep("tun", hitsort_part_CL57$X1, ), ]
CL57_subset_tun <- CL57_subset_tun[grep("tun", CL57_subset_tun$X2, ), ]
CL57_subset_tun <- subset(CL57_subset_tun, X10<99.99)

#cry
CL57_subset_cry <- hitsort_part_CL57[grep("cry", hitsort_part_CL57$X1, ), ]
CL57_subset_cry <- CL57_subset_cry[grep("cry", CL57_subset_cry$X2, ), ]
CL57_subset_cry <- subset(CL57_subset_cry, X10<99.99)

#DE5
CL57_subset_DE5 <- hitsort_part_CL57[grep("DE5", hitsort_part_CL57$X1, ), ]
CL57_subset_DE5 <- CL57_subset_DE5[grep("DE5", CL57_subset_DE5$X2, ), ]
CL57_subset_DE5 <- subset(CL57_subset_DE5, X10<99.99)

#DE9
CL57_subset_DE9 <- hitsort_part_CL57[grep("DE9", hitsort_part_CL57$X1, ), ]
CL57_subset_DE9 <- CL57_subset_DE9[grep("DE9", CL57_subset_DE9$X2, ), ]
CL57_subset_DE9 <- subset(CL57_subset_DE9, X10<99.99)

#791
CL57_subset_791 <- hitsort_part_CL57[startsWith(hitsort_part_CL57$X1, '791'),]
CL57_subset_791 <- CL57_subset_791[startsWith(CL57_subset_791$X2, '791'),]
CL57_subset_791 <- subset(CL57_subset_791, X10<99.99)

#qua
CL57_subset_qua <- hitsort_part_CL57[grep("qua", hitsort_part_CL57$X1, ), ]
CL57_subset_qua <- CL57_subset_qua[grep("qua", CL57_subset_qua$X2, ), ]
CL57_subset_qua <- subset(CL57_subset_qua, X10<99.99)

#cal
CL57_subset_cal <- hitsort_part_CL57[grep("cal", hitsort_part_CL57$X1, ), ]
CL57_subset_cal <- CL57_subset_cal[grep("cal", CL57_subset_cal$X2, ), ]
CL57_subset_cal <- subset(CL57_subset_cal, X10<99.99)

#cra
CL57_subset_cra <- hitsort_part_CL57[grep("cra", hitsort_part_CL57$X1, ), ]
CL57_subset_cra <- CL57_subset_cra[grep("cra", CL57_subset_cra$X2, ), ]
CL57_subset_cra <- subset(CL57_subset_cra, X10<99.99)

#dip
CL57_subset_dip <- hitsort_part_CL57[grep("dip", hitsort_part_CL57$X1, ), ]
CL57_subset_dip <- CL57_subset_dip[grep("dip", CL57_subset_dip$X2, ), ]
CL57_subset_dip <- subset(CL57_subset_dip, X10<99.99)


#tom
CL57_subset_tom <- hitsort_part_CL57[grep("tom", hitsort_part_CL57$X1, ), ]
CL57_subset_tom <- CL57_subset_tom[grep("tom", CL57_subset_tom$X2, ), ]
CL57_subset_tom <- subset(CL57_subset_tom, X10<99.99)

#rub
CL57_subset_rub <- hitsort_part_CL57[grep("rub", hitsort_part_CL57$X1, ), ]
CL57_subset_rub <- CL57_subset_rub[grep("rub", CL57_subset_rub$X2, ), ]
CL57_subset_rub <- subset(CL57_subset_rub, X10<99.99)


CL57_subset_DE5<-ggplot(CL57_subset_DE5, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL57_subset_DE5")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL57_subset_DE9<-ggplot(CL57_subset_DE9, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL57_subset_DE9")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL57_subset_791<-ggplot(CL57_subset_791, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL57_subset_791")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL57_subset_qua<-ggplot(CL57_subset_qua, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL57_subset_qua")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL57_subset_cry<-ggplot(CL57_subset_cry, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL57_subset_cry")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL57_subset_cal<-ggplot(CL57_subset_cal, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL57_subset_cal")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL57_subset_cra<-ggplot(CL57_subset_cra, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL57_subset_cra")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL57_subset_dip<-ggplot(CL57_subset_dip, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL57_subset_dip")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL57_subset_tom<-ggplot(CL57_subset_tom, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL57_subset_tom")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL57_subset_rub<-ggplot(CL57_subset_rub, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL57_subset_rub")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL57_subset_tun<-ggplot(CL57_subset_tun, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL57_subset_tun")+
  theme_minimal()+ expand_limits(x=c(90,100))

##Heterogenity
library(readr)
hitsort_part_CL85 <- read_delim("C:/Users/Jaume/Nextcloud/Documents/Pol/Phoradendron/Repeat explorer/heterogenity/hitsort_part_CL85.csv", 
                                delim = "\t", escape_double = FALSE, 
                                col_names = FALSE, trim_ws = TRUE)


library(data.table)
library(ggplot2)

#tun
CL85_subset_tun <- hitsort_part_CL85[grep("tun", hitsort_part_CL85$X1, ), ]
CL85_subset_tun <- CL85_subset_tun[grep("tun", CL85_subset_tun$X2, ), ]
CL85_subset_tun <- subset(CL85_subset_tun, X10<99.99)

#cry
CL85_subset_cry <- hitsort_part_CL85[grep("cry", hitsort_part_CL85$X1, ), ]
CL85_subset_cry <- CL85_subset_cry[grep("cry", CL85_subset_cry$X2, ), ]
CL85_subset_cry <- subset(CL85_subset_cry, X10<99.99)

#DE5
CL85_subset_DE5 <- hitsort_part_CL85[grep("DE5", hitsort_part_CL85$X1, ), ]
CL85_subset_DE5 <- CL85_subset_DE5[grep("DE5", CL85_subset_DE5$X2, ), ]
CL85_subset_DE5 <- subset(CL85_subset_DE5, X10<99.99)

#DE9
CL85_subset_DE9 <- hitsort_part_CL85[grep("DE9", hitsort_part_CL85$X1, ), ]
CL85_subset_DE9 <- CL85_subset_DE9[grep("DE9", CL85_subset_DE9$X2, ), ]
CL85_subset_DE9 <- subset(CL85_subset_DE9, X10<99.99)

#791
CL85_subset_791 <- hitsort_part_CL85[startsWith(hitsort_part_CL85$X1, '791'),]
CL85_subset_791 <- CL85_subset_791[startsWith(CL85_subset_791$X2, '791'),]
CL85_subset_791 <- subset(CL85_subset_791, X10<99.99)

#qua
CL85_subset_qua <- hitsort_part_CL85[grep("qua", hitsort_part_CL85$X1, ), ]
CL85_subset_qua <- CL85_subset_qua[grep("qua", CL85_subset_qua$X2, ), ]
CL85_subset_qua <- subset(CL85_subset_qua, X10<99.99)

#cal
CL85_subset_cal <- hitsort_part_CL85[grep("cal", hitsort_part_CL85$X1, ), ]
CL85_subset_cal <- CL85_subset_cal[grep("cal", CL85_subset_cal$X2, ), ]
CL85_subset_cal <- subset(CL85_subset_cal, X10<99.99)

#cra
CL85_subset_cra <- hitsort_part_CL85[grep("cra", hitsort_part_CL85$X1, ), ]
CL85_subset_cra <- CL85_subset_cra[grep("cra", CL85_subset_cra$X2, ), ]
CL85_subset_cra <- subset(CL85_subset_cra, X10<99.99)

#dip
CL85_subset_dip <- hitsort_part_CL85[grep("dip", hitsort_part_CL85$X1, ), ]
CL85_subset_dip <- CL85_subset_dip[grep("dip", CL85_subset_dip$X2, ), ]
CL85_subset_dip <- subset(CL85_subset_dip, X10<99.99)


#tom
CL85_subset_tom <- hitsort_part_CL85[grep("tom", hitsort_part_CL85$X1, ), ]
CL85_subset_tom <- CL85_subset_tom[grep("tom", CL85_subset_tom$X2, ), ]
CL85_subset_tom <- subset(CL85_subset_tom, X10<99.99)

#rub
CL85_subset_rub <- hitsort_part_CL85[grep("rub", hitsort_part_CL85$X1, ), ]
CL85_subset_rub <- CL85_subset_rub[grep("rub", CL85_subset_rub$X2, ), ]
CL85_subset_rub <- subset(CL85_subset_rub, X10<99.99)


CL85_subset_DE5<-ggplot(CL85_subset_DE5, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL85_subset_DE5")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL85_subset_DE9<-ggplot(CL85_subset_DE9, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL85_subset_DE9")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL85_subset_791<-ggplot(CL85_subset_791, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL85_subset_791")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL85_subset_qua<-ggplot(CL85_subset_qua, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL85_subset_qua")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL85_subset_cry<-ggplot(CL85_subset_cry, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL85_subset_cry")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL85_subset_cal<-ggplot(CL85_subset_cal, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL85_subset_cal")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL85_subset_cra<-ggplot(CL85_subset_cra, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL85_subset_cra")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL85_subset_dip<-ggplot(CL85_subset_dip, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL85_subset_dip")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL85_subset_tom<-ggplot(CL85_subset_tom, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL85_subset_tom")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL85_subset_rub<-ggplot(CL85_subset_rub, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL85_subset_rub")+
  theme_minimal()+ expand_limits(x=c(90,100))

CL85_subset_tun<-ggplot(CL85_subset_tun, aes(x=X10)) + geom_histogram() + labs(x="BLAST identity", y = "CL85_subset_tun")+
  theme_minimal()+ expand_limits(x=c(90,100))



library("cowplot")
plot_grid(CL85_subset_DE5,CL85_subset_DE9, CL85_subset_791, CL85_subset_qua ,CL85_subset_cry,CL85_subset_cal,CL85_subset_cra,CL85_subset_dip,CL85_subset_tom, CL85_subset_rub, CL85_subset_tun, rremove("x.text"),  
          labels = c("A", "B", "C","D", "E", "F", "G","H","I","J","K"),
          ncol = 2, nrow = 6)
ggsave("CL85_hetero.pdf")

plot_grid(CL2_subset_DE5,CL2_subset_DE9, CL2_subset_791, CL2_subset_qua ,CL2_subset_cry,CL2_subset_cal,CL2_subset_cra,CL2_subset_dip,CL2_subset_tom, CL2_subset_rub, CL2_subset_tun, rremove("x.text"),  
          labels = c("A", "B", "C","D", "E", "F", "G","H","I","J","K"),
          ncol = 2, nrow = 6)
ggsave("CL2_hetero.pdf")

plot_grid(CL6_subset_DE5,CL6_subset_DE9, CL6_subset_791, CL6_subset_qua ,CL6_subset_cry,CL6_subset_cal,CL6_subset_cra,CL6_subset_dip,CL6_subset_tom, CL6_subset_rub, CL6_subset_tun, rremove("x.text"),  
          labels = c("A", "B", "C","D", "E", "F", "G","H","I","J","K"),
          ncol = 2, nrow = 6)
ggsave("CL6_hetero.pdf")

plot_grid(CL16_subset_DE5,CL16_subset_DE9, CL16_subset_791, CL16_subset_qua ,CL16_subset_cry,CL16_subset_cal,CL16_subset_cra,CL16_subset_dip,CL16_subset_tom, CL16_subset_rub, CL16_subset_tun, rremove("x.text"),  
          labels = c("A", "B", "C","D", "E", "F", "G","H","I","J","K"),
          ncol = 2, nrow = 6)
ggsave("CL16_hetero.pdf")

plot_grid(CL30_subset_DE5,CL30_subset_DE9, CL30_subset_791, CL30_subset_qua ,CL30_subset_cry,CL30_subset_cal,CL30_subset_cra,CL30_subset_dip,CL30_subset_tom, CL30_subset_rub, CL30_subset_tun, rremove("x.text"),  
          labels = c("A", "B", "C","D", "E", "F", "G","H","I","J","K"),
          ncol = 2, nrow = 6)
ggsave("CL30_hetero.pdf")

plot_grid(CL38_subset_DE5,CL38_subset_DE9, CL38_subset_791, CL38_subset_qua ,CL38_subset_cry,CL38_subset_cal,CL38_subset_cra,CL38_subset_dip,CL38_subset_tom, CL38_subset_rub, CL38_subset_tun, rremove("x.text"),  
          labels = c("A", "B", "C","D", "E", "F", "G","H","I","J","K"),
          ncol = 2, nrow = 6)
ggsave("CL38_hetero.pdf")

plot_grid(CL39_subset_DE5,CL39_subset_DE9, CL39_subset_791, CL39_subset_qua ,CL39_subset_cry,CL39_subset_cal,CL39_subset_cra,CL39_subset_dip,CL39_subset_tom, CL39_subset_rub, CL39_subset_tun, rremove("x.text"),  
          labels = c("A", "B", "C","D", "E", "F", "G","H","I","J","K"),
          ncol = 2, nrow = 6)
ggsave("CL39_hetero.pdf")

plot_grid(CL44_subset_DE5,CL44_subset_DE9, CL44_subset_791, CL44_subset_qua ,CL44_subset_cry,CL44_subset_cal,CL44_subset_cra,CL44_subset_dip,CL44_subset_tom, CL44_subset_rub, CL44_subset_tun, rremove("x.text"),  
          labels = c("A", "B", "C","D", "E", "F", "G","H","I","J","K"),
          ncol = 2, nrow = 6)
ggsave("CL44_hetero.pdf")

plot_grid(CL48_subset_DE5,CL48_subset_DE9, CL48_subset_791, CL48_subset_qua ,CL48_subset_cry,CL48_subset_cal,CL48_subset_cra,CL48_subset_dip,CL48_subset_tom, CL48_subset_rub, CL48_subset_tun, rremove("x.text"),  
          labels = c("A", "B", "C","D", "E", "F", "G","H","I","J","K"),
          ncol = 2, nrow = 6)
ggsave("CL48_hetero.pdf")

plot_grid(CL49_subset_DE5,CL49_subset_DE9, CL49_subset_791, CL49_subset_qua ,CL49_subset_cry,CL49_subset_cal,CL49_subset_cra,CL49_subset_dip,CL49_subset_tom, CL49_subset_rub, CL49_subset_tun, rremove("x.text"),  
          labels = c("A", "B", "C","D", "E", "F", "G","H","I","J","K"),
          ncol = 2, nrow = 6)
ggsave("CL49_hetero.pdf")

plot_grid(CL57_subset_DE5,CL57_subset_DE9, CL57_subset_791, CL57_subset_qua ,CL57_subset_cry,CL57_subset_cal,CL57_subset_cra,CL57_subset_dip,CL57_subset_tom, CL57_subset_rub, CL57_subset_tun, rremove("x.text"),  
          labels = c("A", "B", "C","D", "E", "F", "G","H","I","J","K"),
          ncol = 2, nrow = 6)
ggsave("CL57_hetero.pdf")

plot_grid(CL105_subset_DE5,CL105_subset_DE9, CL105_subset_791, CL105_subset_qua ,CL105_subset_cry,CL105_subset_cal,CL105_subset_cra,CL105_subset_dip,CL105_subset_tom, CL105_subset_rub, CL105_subset_tun, rremove("x.text"),  
          labels = c("A", "B", "C","D", "E", "F", "G","H","I","J","K"),
          ncol = 2, nrow = 6)
ggsave("CL105_hetero.pdf")

plot_grid(CL136_subset_DE5,CL136_subset_DE9, CL136_subset_791, CL136_subset_qua ,CL136_subset_cry,CL136_subset_cal,CL136_subset_cra,CL136_subset_dip,CL136_subset_tom, CL136_subset_rub, CL136_subset_tun, rremove("x.text"),  
          labels = c("A", "B", "C","D", "E", "F", "G","H","I","J","K"),
          ncol = 2, nrow = 6)
ggsave("CL136_hetero.pdf")

plot_grid(CL290_subset_DE5,CL290_subset_DE9, CL290_subset_791, CL290_subset_qua ,CL290_subset_cry,CL290_subset_cal,CL290_subset_cra,CL290_subset_dip,CL290_subset_tom, CL290_subset_rub, CL290_subset_tun, rremove("x.text"),  
          labels = c("A", "B", "C","D", "E", "F", "G","H","I","J","K"),
          ncol = 2, nrow = 6)
ggsave("CL290_hetero.pdf")

