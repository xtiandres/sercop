# Archivos indicador compuesto

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
#dsp01 <- read.csv("/home/xut/Documents/udaviz/R/studio/sercop/data/sieproceso/sie_proceso_indicador_01_2021.csv")
#dsieic <- read_csv("/home/xut/Documents/udaviz/R/studio/sercop/data/sieproceso/sie_entidad_IC.csv")
dspic <- read.csv2("/home/xut/Documents/udaviz/R/studio/sercop/data/sieproceso/sie_proceso_IC.csv", sep = ",", header = T, fileEncoding = "UTF8")
#dspic <- read_csv("/home/xut/Documents/udaviz/R/studio/sercop/data/sieproceso/text.csv")

# ELIMINAR FILAS VACIAS
dspic <- dspic[!apply(dspic == "", 1, all),]

