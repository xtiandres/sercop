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

