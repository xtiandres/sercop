# Graficos Estados SIE y GEN - Proyecto SERCOP

# Libreriras
library(readr)
library(readxl)
library(dplyr)
library(tidyr)
library(ggplot2)
library(plyr)
library(vcd)
library(data.table)
library(lubridate)
library(tidyverse)
library(gridExtra)


# DATASET
dsie <- read.csv("/home/xut/Documents/udaviz/R/studio/sercop/data/e_sie.csv")
#dsie
dgen_e <- read.csv("/home/xut/Documents/udaviz/R/studio/sercop/data/e_gen_epms.csv")
#dgen1
dgen_p <- read.csv("/home/xut/Documents/udaviz/R/studio/sercop/data/e_gen_cp.csv")
#dgen2

# SIE - Estados vs Registros - barras
psie1 <- ggplot(dsie,
                aes(Estados, Registros)) +
  geom_bar(stat = 'identity',
           fill = 'cornflowerblue') +
  aes(x = fct_inorder(Estados)) +
  geom_text(aes(label = Registros),
            vjust = -.25,
            size = 3) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90,
                                   hjust = 1,
                                   size = 7)) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank()) + 
  labs(title = "SUBASTA INVERSA ELECTRONICA",
       subtitle = "Estados1",
       x = NULL,
       y = NULL)

# SIE - Estados vs Registros - barras - fill=Estados
psie2 <- ggplot(dsie, 
                aes(x = reorder(Estados, Registros), y = Registros)) +
  geom_bar(stat = 'identity',
           fill = 'cornflowerblue') +
  geom_text(aes(label = Registros),
            vjust = -.25,
            size = 3) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90,
                                   hjust = 1,
                                   size = 7)) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank()) + 
  theme(legend.position = 'none', legend.key.size = unit(.015, 'cm')) +
  labs(title = "SUBASTA INVERSA ELECTRONICA",
       subtitle = "Estados2",
       x = NULL,
       y = NULL)

# SIE - Estados vs Registros - points - fill=Estados
psie3 <- ggplot(dsie,
                aes(y = reorder(Estados, Registros), x = Registros)) +
  geom_point(color = 'blue',
             size = 2) +
  geom_segment(aes(x = 0,
                   xend = Registros,
                   y = reorder(Estados, Registros),
                   yend = reorder(Estados, Registros)),
               color = 'lightgrey') +
  geom_text(aes(label = Registros),
            vjust = -.25,
            size = 3) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90,
                                   hjust = 1,
                                   size = 7)) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank()) + 
  labs(title = "SUBASTA INVERSA ELECTRONICA",
       subtitle = "Estados3",
       x = NULL,
       y = NULL)

# SIE - Estados vs Registros - barras
psie4 <- ggplot(dsie,
                aes(Registros, Estados)) +
  geom_bar(stat = 'identity',
           fill = 'cornflowerblue') +
  aes(y = fct_inorder(Estados)) +
  geom_text(aes(label = Registros),
            vjust = -.25,
            size = 3) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90,
                                   hjust = 1,
                                   size = 7)) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank()) + 
  labs(title = "SUBASTA INVERSA ELECTRONICA",
       subtitle = "Estados4",
       x = NULL,
       y = NULL)

# Multi plots
grid.arrange(psie1, psie2, psie3, psie4, ncol = 2)