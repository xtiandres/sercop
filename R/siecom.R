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
#dspic <- read.csv2("/home/xut/Documents/udaviz/R/studio/sercop/data/sieproceso/sie_proceso_IC.csv", sep = ",", header = T, fileEncoding = "UTF8")
dspic <- read_excel("/home/xut/Documents/udaviz/R/studio/sercop/data/sieproceso/sie_proceso_IC1.xlsm", sheet=3)

# ELIMINAR FILAS VACIAS
#dspic <- dspic[!apply(dspic == "", 1, all),]

long_data <- gather(dspic, 
                    key="variable", 
                    value="value", 
                    sie_proceso_indicador_01:sie_proceso_indicador_27)

# FILTROS DAVID
ind01_1 <- dspic %>%
  filter(sie_proceso_indicador_01 == 1) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ind01_0 <- dspic %>%
  filter(sie_proceso_indicador_01 == 0) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ind01_N <- dspic %>%
  filter(sie_proceso_indicador_01 == '-') %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())

# INDICADOR 01 TOTALES
ind01_p <- full_join(ind01_0, ind01_1, by = 'estado_del_proceso')
ind01_t <- full_join(ind01_p, ind01_N, by = 'estado_del_proceso')


