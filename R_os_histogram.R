
  #------------------------ Merhaba YazD1lD1m -------------------------------#

  #----------------------- Hasan Can Demirci ------------------------------#



## Histogram | Bar grafik | Bar graph | Sütun grafiği 



#birden çok bar grafik çizecek isek 

colnames(a)
a_long <- a %>% 
  pivot_longer(
    cols = c(  "L1", "L2", "L3"   ,"L4"  ,  "1 DAY" , "2 DAY"), 
    names_to = "Stage", 
    values_to = "Length")

a_long$Stage <- factor(a_long$Stage, levels = c(  "L1", "L2", "L3"   ,"L4"  ,  "1 DAY" , "2 DAY"))

ggplot(a_long, aes(x = Stage, y = Length)) +
  geom_bar(stat = "identity", position = "dodge", aes(fill = Stage)) +
  scale_fill_manual(values = c("Wild Type" = "#004c99", "wdr-31; eldm-1; rpi-2" = "#0080ff",
                               "wdr-31;bbs-8"= "#66b2ff", "wdr-31;eldm-1;bbs-8" = "#cce5ff")) +
  ylim(0, 43) +
  ggtitle("IFT-74::GFP (Complex B)\nMiddle segment-percent particles") +
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.line = element_line(),
        plot.title = element_text(hjust = 0.5))