
  #------------------------ Merhaba Yazilim -------------------------------#

  #----------------------- Hasan Can Demirci ------------------------------#



## Histogram | Bar grafik | Bar graph | sütun grafigi 

library(ggplot2)
library(readxl)
library(dplyr)
library(tidyr)

data <- read_xlsx("data_source.xlsx", sheet = 3)

colnames(data)

names(data)[2] <- "Ayse"

data1 <- data %>% 
  pivot_longer(
    cols = c("Ali","Ayse", "Hasan","Tunahan", "Huri") ,
    names_to = "kisiler",
    values_to = "para"
    
  )
  

ggplot(data1, aes(x=kisiler , y=para)) +
  geom_bar(stat = "identity", position = "dodge", aes(fill=kisiler))+
  ylim(0,85) +
  scale_fill_manual(values = c("Ali" = "blue", "Ayse"= "red", "Hasan"= "purple", "Tunahan"="orange", "Huri"="pink"))


#kutucuklara farkli renk ver, plot basligi ortada olacak sekilde, arkaplanı kaldır, arkadaki cizgileri kaldır,
#eksen cizgilerini belirt, x ve y ekseni isimlerini degistir
  
#eleman sirasi belirleme 

data1$kisiler <- factor(data1$kisiler, levels = c("Tunahan", "Huri", "Ayse", "Ali", "Hasan"))


ggplot(data1, aes(x=kisiler , y=para)) +
  geom_bar(stat = "identity", position = "dodge", aes(fill=kisiler))+
  ylim(0,85) +
  scale_fill_manual(values = c("Ali" = "blue", "Ayse"= "red", "Hasan"= "purple", "Tunahan"="orange", "Huri"="pink"))+
  ggtitle("Bar grafigimiz") +
  theme(
    panel.background = element_blank(),
    panel.grid = element_blank(),
    axis.line = element_line(),
    plot.title = element_text(hjust = 0.5),
    legend.position = "none") +
  labs(x= "person", y="income")

#legend kaldirma
