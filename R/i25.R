# SIE - Indicador 25

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
denti <- read.csv2("/home/xut/Documents/udaviz/R/studio/sercop/data/ind25/sie_entidad_indicador_25_BD_local.csv", sep = ",", header = T, fileEncoding = "UTF8")
dproc <- read.csv2("/home/xut/Documents/udaviz/R/studio/sercop/data/ind25/sie_proceso_indicador_25_BD_local.csv", sep = ",", header = T, fileEncoding = "UTF8")
dprov <- read.csv2("/home/xut/Documents/udaviz/R/studio/sercop/data/ind25/sie_proveedor_indicador_25_BD_local.csv", sep = ",", header = T, fileEncoding = "UTF8")

# VALIDACION

denti1 <- filter(denti,
                 anio_publicacion == 2022 &
                   mes_publicacion == 1)

dproc1 <- filter(dproc,
                 fecha_publicacion %in% c('2022-01-01','2022-01-02','2022-01-03','2022-01-04','2022-01-05',
                                          '2022-01-06','2022-01-07','2022-01-08','2022-01-09','2022-01-10',
                                          '2022-01-11','2022-01-12','2022-01-13','2022-01-14','2022-01-15',
                                          '2022-01-16','2022-01-17','2022-01-18','2022-01-19','2022-01-20',
                                          '2022-01-21','2022-01-22','2022-01-23','2022-01-24','2022-01-25',
                                          '2022-01-26','2022-01-27','2022-01-28','2022-01-29','2022-01-30',
                                          '2022-01-31'))

dprov1 <- filter(dprov,
                 anio_publicacion == 2022 &
                   mes_publicacion == 1)

