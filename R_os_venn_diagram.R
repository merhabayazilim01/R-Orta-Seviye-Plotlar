  
  #------------------------ Merhaba Yazilim -------------------------------#

  #----------------------- Hasan Can Demirci ------------------------------#


## required libraries ##

#install.packages("VennDiagram")

library(VennDiagram)
library(gridExtra)
library(readxl)

#data import

data_source <- read_xlsx("data_source.xlsx", sheet = 4)

#kolonlari ayri ayri karakter olarak al

asli <- data_source$Asli

kerem <- data_source$Kerem

ali <- data_source$Ali 

# venn diagrami olustur
  
venn <- venn.diagram(
  
  x= list(asli,kerem,ali),
  category.names = c("asli","kerem","ali"),
  filename = NULL,
  output = TRUE,
  fill = c("red", "blue", "orange")
  
)

grid.arrange(venn)

          ##### Venn Diyagrami Analiz Yontemi ########


library(gplots) #required library 
 
## Veriyi liste formatina cevirmek

listtt <- list(asli,kerem,ali)

## Analiz icin ven diyagrami almak 

ItemsList <- venn(listtt, show.plot = T)
  

##Kesisim sayisini gormek

length(attributes(ItemsList)$intersections)

## Kesisim elemanlarini gormek

attributes(ItemsList)$intersections


