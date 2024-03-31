
#------------------------ Merhaba Yazilim -------------------------------#

#----------------------- Hasan Can Demirci ------------------------------#



## Histogram | Bar grafik | Bar graph | sütun grafigi 

library(ggplot2)
library(readxl)
library(dplyr)
library(tidyr)

data <- read_xlsx("bar_abone_istegi.xlsx")

colnames(data)


data1 <- data %>% 
  pivot_longer(
    cols = c("positive" ,"negative") ,
    names_to = "kind",
    values_to = "expression"
    
  )


ggplot(data1, aes(x=gene , y=expression)) +
  geom_bar(stat = "identity", position = "stack", aes(fill=kind))+
  ylim(0,12) +
  scale_fill_manual(values = c("negative" = "darkred", "positive"= "darkgreen"))+
  ggtitle("Bar grafigimiz") +
  theme(
    panel.background = element_blank(),
    panel.grid = element_blank(),
    axis.line = element_line(),
    plot.title = element_text(hjust = 0.5)) +
  labs(x= "Genes", y="Expression")

#geom_text() isterseniz yüzdelikleri yazabilirsiniz
  

