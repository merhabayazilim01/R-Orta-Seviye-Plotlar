
 #------------------------ Merhaba Yazilim -------------------------------#

 #-----------------------  Hasan Can Demirci ------------------------------#



#data olusturma

x<- 1:10
  
y<- 10:19

#install.packages("ggplot2")

library(ggplot2)


#dataframe olusturma

data <- data.frame(x,y)

## ggplot yapisi

ggplot(data, aes(x=x , y=y)) +
  geom_line(size= 1.5, color = "red")
  

##yuklenen data icin ggplot yapisi

## data table import  

library(readxl)

#line1 <- read_xlsx("data_source.xlsx", sheet = 1)

line1 <- read_xlsx("data_source.xlsx", sheet = "line1")

colnames(line1)


ggplot(line1, aes(x= birinci_kolon , y=ikinci_kolon)) +
  geom_line()


#birden fazla cizgi grafigi tek plotta


#data import (line2)

library(dplyr)
library(tidyr)

line2 <- read_xlsx("data_source.xlsx", sheet = 2)


colnames(line2)


line2 <- line2 %>% 
  pivot_longer(
    cols = c("0.2", "0.4", "0.6" ,"0.8", "1" ,  "1.6", "1.8" ,"2" ),
    names_to = "kind",
    values_to= "values")

names(line2)[1] <- "tur"

ggplot(line2, aes(x= kind, y=values, group = tur, color = tur)) +
  geom_line(size=1.5) +
  scale_color_manual(values = c("Elma"= "blue", "Armut" = "red", "Kiraz"= "orange", "Muz"= "purple"))+
  labs(x= "Merhaba", y= "Yazilim") +
  ggtitle("Bizim D0lk PlotD1mD1z") +
  theme(
    panel.grid = element_blank(),
    panel.grid.major = element_blank() ,
    panel.grid.minor= element_blank(),
    axis.line = element_line(),
    panel.background = element_blank(),
    plot.title = element_text(hjust = 0.5)
    
  )


