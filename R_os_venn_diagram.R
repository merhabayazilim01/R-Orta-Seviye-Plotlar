  #------------------------ Merhaba YazD1lD1m -------------------------------#

  #----------------------- Hasan Can Demirci ------------------------------#

setwd("C:\\Users\\Hasan Can Demirci\\Desktop\\R_Orta_Seviye_Egitim")

## required libraries ##

library(VennDiagram)
library(gridExtra)
library(readxl)

data_source <- read_xlsx("data_source.xlsx", sheet = 4)

asli <- data_source$Asli

kerem <-data_source$Kerem

ali <- data_source$Ali


venn <- venn.diagram(
  x = list(asli,kerem,ali),
  category.names = c("asli", "kerem","ali"),
  filename = NULL,
  output = TRUE,
  fill = c("red", "blue","green")
)

grid.arrange(venn)


          ##### Venn DiagramD1 Analiz YC6ntemi ########


library(gplots) #required libray 
 
## Veriyi liste foramtD1na C'evirmek

listtt <-list(asli,kerem,ali)

## Analiz iC'in ven diyagramD1 almak 

ItemsList <- venn(listtt, show.plot = T) #FALSE DA YAPILIR

##KesiEim eleman sayD1sD1nD1 gC6rmek

lengths(attributes(ItemsList)$intersections)

## KesiEim elemanlarD1nD1 almak 
attributes(ItemsList)$intersections
