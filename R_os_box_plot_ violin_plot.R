 
        ############## Merhaba Yazılım ###################

            ############## Box Plot #################



############### Necessary Libraries ###########

library(readxl) #excel dosyasi okutmak icin
library(tidyverse) #pivot_longer icin
library(dplyr) # %>% isaretini aktiflestirmek icin
library(hrbrthemes) # theme_ipsum() fonksiyonu icin
library(ggpubr) #ggviolin ve ggboxplot fonksiyonlari icin
        
        

## Data Import ##
        
data <- read_xlsx("", sheet = "")

## Data Toparlama / Duzenleme ##

colnames(data)

data <- data %>%
  pivot_longer(
    cols = c(),
    names_to = "",
    values_to = "")


## Tek Renkli Box Plot, Legend Olmadan

ggplot(data, aes(x=, y=, group=)) +
  geom_boxplot(fill="", notch=FALSE, outlier.shape = NA) +
  geom_jitter(size=1, color="", width=0.1) +
  theme_ipsum()


## Ozel Renkli Box Plot ##


ggboxplot(data, x = "", y = "", fill = "",
          palette = c("red",....),
          add = "boxplot", add.params = list(fill = rep(c("red",....)))) 


## Ozel Renkli Violin Plot ##

ggviolin(data, x = "", y = "", fill = "",
         palette = c("red",....),
         add = "boxplot", add.params = list(fill = "white"))




#theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1))
