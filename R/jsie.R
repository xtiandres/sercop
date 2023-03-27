# Union archivos SIE y preparacion nuevo R file

# Librerias
library(readr)
library(readxl)
library(dplyr)
library(tidyr)
library(ggplot2)
library(plyr)
library(vcd)
library(ggridges)
library(data.table)
library(lubridate)
library(tidyverse)
library(RColorBrewer)
library(patchwork)
library(ggpubr)
library(EpiEstim)
library(plotly)
library(tidyverse)
library(ggrepel)
library(scales)

# DATASET
dsp01 <- read.csv("/home/xut/Documents/udaviz/R/studio/sercop/data/sieproceso/sie_proceso_indicador_01_2021.csv")
dsp04 <- read.csv("/home/xut/Documents/udaviz/R/studio/sercop/data/sieproceso/sie_proceso_indicador_04_2021.csv")
dsp05 <- read.csv("/home/xut/Documents/udaviz/R/studio/sercop/data/sieproceso/sie_proceso_indicador_05_2021.csv")
dsp15 <- read.csv("/home/xut/Documents/udaviz/R/studio/sercop/data/sieproceso/sie_proceso_indicador_15_2021.csv")
dsp17 <- read.csv("/home/xut/Documents/udaviz/R/studio/sercop/data/sieproceso/sie_proceso_indicador_17_2021.csv")
dsp18 <- read.csv("/home/xut/Documents/udaviz/R/studio/sercop/data/sieproceso/sie_proceso_indicador_18_2021.csv")
dsp19 <- read.csv("/home/xut/Documents/udaviz/R/studio/sercop/data/sieproceso/sie_proceso_indicador_19_2021.csv")
dsp21 <- read.csv("/home/xut/Documents/udaviz/R/studio/sercop/data/sieproceso/sie_proceso_indicador_21_2021.csv")

p <- dsie2 %>% 
  ggplot(aes(x = Registros, y = Estados)) +
  geom_col(aes(x = Universo), fill = "cornflowerblue") +
  geom_col(width = 0.5, fill = "black") +
  aes(y = fct_inorder(Estados)) +
  #  geom_text(aes(label = Registros),
  #            hjust = -.1,
  #            vjust = 1,
  #            size = 2.5) +
  #  geom_text(aes(label = Universo),
  #            hjust = -.7,
  #            vjust = -1,
  #            color = 'darkblue',
  #            size = 3.3) +
  labs(x = 'Registros / Universo',
       y = 'Estados') +
  theme_minimal() +
  theme(axis.text.y = element_text(#angle = 90,
    hjust = 1,
    size = 16)) +
  theme(axis.text.x = element_text(#angle = -90,
    hjust = 1,
    size = 16)) +
  scale_x_continuous(labels = label_number(suffix = 'K', scale = 0.001)) +
  theme(panel.grid.major.y = element_blank()) 

p
#ggplotly(p)
ggsave(filename = 'sie.png', 
       #plot = p, 
       #device = 'png', 
       height = 15, 
       width = 15, 
       #units = 'px',
       #pointsize = 12,
       bg = 'white')