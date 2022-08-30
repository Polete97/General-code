
#######ANOVAAAA#######

df<-read.delim("clipboard")
summary(df)

GS <- glm(Single ~  GS, data = df)
summary(GS)

Percentage <- glm(Single ~  Percentage, data = df)
summary(Percentage)


All <- glm(Single ~  Percentage + GS, data = df)
summary(All)


interaction <- aov(Single ~ fertilizer * density, data = crop.data)

blocking <- aov(Single ~ fertilizer * density + block, data = crop.data)


#####paired wilcoxon#####
df<-read.delim("clipboard")

library("dplyr")


group_by(df, species) %>%
  summarise(
    count = n(),
    median = median(Single, na.rm = TRUE),
    IQR = IQR(Single, na.rm = TRUE)
  )

library("ggpubr")

ggboxplot(df, x = "pgroup", y = "Ty3.gypsy", 
          color = "pgroup", 
          ylab = "Single", xlab = "pgroup")

df$pgroup<-as.factor(df$pgroup)

# Subset weight data before treatment

before <- subset(df,  pgroup == "1", Single,
                 drop = TRUE)
# subset weight data after treatment
after <- subset(df,  pgroup == "2", Single,
                drop = TRUE)
# Plot paired data
library(PairedData)
pd <- paired(before, after)
plot(pd, type = "profile") + theme_minimal()


Single <- wilcox.test(before, after, paired = TRUE)
Single


# Subset weight data before treatment

before <- subset(df,  pgroup == "1", Ty1.copia,
                 drop = TRUE)
# subset weight data after treatment
after <- subset(df,  pgroup == "2", Ty1.copia,
                drop = TRUE)
# Plot paired data
library(PairedData)
pd <- paired(before, after)
plot(pd, type = "profile") + theme_minimal()


Ty1.copia <- wilcox.test(before, after, paired = TRUE)
Ty1.copia


# Subset weight data before treatment

before <- subset(df,  pgroup == "1", Ty3.gypsy,
                 drop = TRUE)
# subset weight data after treatment
after <- subset(df,  pgroup == "2", Ty3.gypsy,
                drop = TRUE)
# Plot paired data
library(PairedData)
pd <- paired(before, after)
plot(pd, type = "profile") + theme_minimal()


Ty3.gypsy <- wilcox.test(before, after, paired = TRUE)
Ty3.gypsy

# Subset weight data before treatment

before <- subset(df,  pgroup == "1", LINE,
                 drop = TRUE)
# subset weight data after treatment
after <- subset(df,  pgroup == "2", LINE,
                drop = TRUE)
# Plot paired data
library(PairedData)
pd <- paired(before, after)
plot(pd, type = "profile") + theme_minimal()


LINE <- wilcox.test(before, after, paired = TRUE)
LINE

# Subset weight data before treatment

before <- subset(df,  pgroup == "1", DNA.transp.,
                 drop = TRUE)
# subset weight data after treatment
after <- subset(df,  pgroup == "2", DNA.transp.,
                drop = TRUE)
# Plot paired data
library(PairedData)
pd <- paired(before, after)
plot(pd, type = "profile") + theme_minimal()


DNA.transp. <- wilcox.test(before, after, paired = TRUE)
DNA.transp.

# Subset weight data before treatment

before <- subset(df,  pgroup == "1", LTR,
                 drop = TRUE)
# subset weight data after treatment
after <- subset(df,  pgroup == "2", LTR,
                drop = TRUE)
# Plot paired data
library(PairedData)
pd <- paired(before, after)
plot(pd, type = "profile") + theme_minimal()


LTR <- wilcox.test(before, after, paired = TRUE)
LTR

# Subset weight data before treatment

before <- subset(df,  pgroup == "1", rDNA,
                 drop = TRUE)
# subset weight data after treatment
after <- subset(df,  pgroup == "2", rDNA,
                drop = TRUE)
# Plot paired data
library(PairedData)
pd <- paired(before, after)
plot(pd, type = "profile") + theme_minimal()


rDNA <- wilcox.test(before, after, paired = TRUE)
rDNA

# Subset weight data before treatment

before <- subset(df,  pgroup == "1", Satellite,
                 drop = TRUE)
# subset weight data after treatment
after <- subset(df,  pgroup == "2", Satellite,
                drop = TRUE)
# Plot paired data
library(PairedData)
pd <- paired(before, after)
plot(pd, type = "profile") + theme_minimal()


Satellite <- wilcox.test(before, after, paired = TRUE)
Satellite







library(broom)
library(dplyr)
library(purrr)
library(tidyr)

t_test <- function(df, mu = 0, alt = "two.sided", paired = T, conf.level = .99) {
  tidy(t.test(df$prop, 
              
              mu = mu, 
              alt = alt,
              paired = paired,
              conf.level = conf.level))
}

d <- df %>%
  group_by(Product_type) %>%
  nest() %>%
  mutate(ttest = map(data, t_test)) %>%
  unnest(ttest, .drop = T)


tukey.two.way<-TukeyHSD(two.way)

tukey.two.way

ggplot(df, aes(x=MY))+
  geom_histogram(color="darkblue", fill="lightblue", bins = 15)+ xlim(0, 20)

