 
        ############## Merhaba Yazılım ###################

            ############## Box Plot #################



############### Necessary Libraries ###########

library(readxl) #excel dosyasi okutmak icin
library(tidyverse) #pivot_longer icin
library(dplyr) # %>% isaretini aktiflestirmek icin
library(hrbrthemes) # theme_ipsum() fonksiyonu icin
library(ggpubr) #ggviolin ve ggboxplot fonksiyonlari icin
        
        

## Data Import ##
        
data <- read_xlsx("data_source.xlsx", sheet = "BoxPlot")

## Data Toparlama / Duzenleme ##

colnames(data)

data <- data %>%
  pivot_longer(
    cols = c("A_Spor", "B_Spor", "C_Spor", "D_Spor", "E_Spor"),
    names_to = "kanal",
    values_to = "reyting")


## Tek Renkli Box Plot, Legend Olmadan

ggplot(data, aes(x=kanal, y=reyting, group=kanal)) +
  geom_boxplot(fill="lightblue", notch=FALSE, outlier.shape = NA) +
  geom_jitter(size=1, color="black", width=0.1) +
  theme_ipsum()


## Ozel Renkli Box Plot ##


ggboxplot(data, x = "kanal", y = "reyting", fill = "kanal",
          palette = c("red","blue", "orange", "lightblue","purple"),
          add = "boxplot", add.params = list(fill = rep(c("red","blue", "orange", "lightblue","purple")))) 


## Ozel Renkli Violin Plot ##

ggviolin(data, x = "kanal", y = "reyting", fill = "kanal",
         palette = c("red","blue", "orange", "lightblue","purple"),
         add = "boxplot", add.params = list(fill = "white"))+
         theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1))




