
 #------------------------ Merhaba Yazilim -------------------------------#

 #----------------------- Hasan Can Demirci ------------------------------#


#string ifade olusturma

string <- "Merhaba Yazilim ile 0'dan ileri seviye R egitimi. Merhaba Yazilim Abone Ol"

#gsub base

## Merhaba yazisini  Hello ' ya cevir

string_gsub <- gsub("Merhaba", "Hello", string)
string_gsub

## a ve f ye kadar olan harleri cikar

string_gsub2 <- gsub("[a-f]","",string)
string_gsub2

#sub base

string_sub <- sub("Merhaba", "Hello", string)
string_sub

#library(stringr)

library(stringr)

## string ifade icerisinde a-f arasinda yer alan harfleri kontrol et


stringr_new <- str_view_all(string, "[a-f]")
stringr_new 

#grep base

grepl("Merhaba", string)

##import data table

library(readxl)
boy_listesi <- read_xlsx("boy_listesi.xlsx")

  
#cm'leri bosluk ile degistirme

boy_listesi$Boy <- gsub("cm","", boy_listesi$Boy)


#yeni kolon ac ve icinde sadece sayilar olsun
  
boy_listesi$yeni <- gsub("[^[:digit:]]","", boy_listesi$Boy)


## websitesinden ornek 
## https://www.datacamp.com/tutorial/regex-r-regular-expressions-guide

ornek <- str_replace_all(string, "Merhaba", "Hello")
  
ornek
string_gsub
string_gsub <- gsub("Merhaba", "Hello", string)

  
  
  
  
  



