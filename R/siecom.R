# INDICADORES PROCESOS SIE - IPS

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

# INDICADOR 01
ips01_1 <- dspic %>%
  filter(sie_proceso_indicador_01 == 1) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips01_0 <- dspic %>%
  filter(sie_proceso_indicador_01 == 0) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips01_N <- dspic %>%
  filter(sie_proceso_indicador_01 == '-') %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())

# INDICADOR 04
ips04_1 <- dspic %>%
  filter(sie_proceso_indicador_04 == 1) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips04_0 <- dspic %>%
  filter(sie_proceso_indicador_04 == 0) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips04_N <- dspic %>%
  filter(sie_proceso_indicador_04 == '-') %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())

# INDICADOR 05
ips05_1 <- dspic %>%
  filter(sie_proceso_indicador_05 == 1) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips05_0 <- dspic %>%
  filter(sie_proceso_indicador_05 == 0) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips05_N <- dspic %>%
  filter(sie_proceso_indicador_05 == '-') %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())

# INDICADOR 06
ips06_1 <- dspic %>%
  filter(sie_proceso_indicador_06 == 1) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips06_0 <- dspic %>%
  filter(sie_proceso_indicador_06 == 0) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips06_N <- dspic %>%
  filter(sie_proceso_indicador_06 == '-') %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())

# INDICADOR 09
ips09_1 <- dspic %>%
  filter(sie_proceso_indicador_09 == 1) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips09_0 <- dspic %>%
  filter(sie_proceso_indicador_09 == 0) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips09_N <- dspic %>%
  filter(sie_proceso_indicador_09 == '-') %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())

# INDICADOR 11
ips11_1 <- dspic %>%
  filter(sie_proceso_indicador_11 == 1) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips11_0 <- dspic %>%
  filter(sie_proceso_indicador_11 == 0) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips11_N <- dspic %>%
  filter(sie_proceso_indicador_11 == '-') %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())

# INDICADOR 15
ips15_1 <- dspic %>%
  filter(sie_proceso_indicador_15 == 1) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips15_0 <- dspic %>%
  filter(sie_proceso_indicador_15 == 0) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips15_N <- dspic %>%
  filter(sie_proceso_indicador_15 == '-') %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())

# INDICADOR 17
ips17_1 <- dspic %>%
  filter(sie_proceso_indicador_17 == 1) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips17_0 <- dspic %>%
  filter(sie_proceso_indicador_17 == 0) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips17_N <- dspic %>%
  filter(sie_proceso_indicador_17 == '-') %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())

# INDICADOR 19
ips19_1 <- dspic %>%
  filter(sie_proceso_indicador_19 == 1) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips19_0 <- dspic %>%
  filter(sie_proceso_indicador_19 == 0) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips19_N <- dspic %>%
  filter(sie_proceso_indicador_19 == '-') %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())

# INDICADOR 21
ips21_1 <- dspic %>%
  filter(sie_proceso_indicador_21 == 1) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips21_0 <- dspic %>%
  filter(sie_proceso_indicador_21 == 0) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips21_N <- dspic %>%
  filter(sie_proceso_indicador_21 == '-') %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())

# INDICADOR 22
ips22_1 <- dspic %>%
  filter(sie_proceso_indicador_22 == 1) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips22_0 <- dspic %>%
  filter(sie_proceso_indicador_22 == 0) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips22_N <- dspic %>%
  filter(sie_proceso_indicador_22 == '-') %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())

# INDICADOR 23
ips23_1 <- dspic %>%
  filter(sie_proceso_indicador_23 == 1) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips23_0 <- dspic %>%
  filter(sie_proceso_indicador_23 == 0) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips23_N <- dspic %>%
  filter(sie_proceso_indicador_23 == '-') %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())

# INDICADOR 25
ips25_1 <- dspic %>%
  filter(sie_proceso_indicador_25 == 1) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips25_0 <- dspic %>%
  filter(sie_proceso_indicador_25 == 0) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips25_N <- dspic %>%
  filter(sie_proceso_indicador_25 == '-') %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())

# INDICADOR 26
ips26_1 <- dspic %>%
  filter(sie_proceso_indicador_26 == 1) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips26_0 <- dspic %>%
  filter(sie_proceso_indicador_26 == 0) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips26_N <- dspic %>%
  filter(sie_proceso_indicador_26 == '-') %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())

# INDICADOR 27
ips27_1 <- dspic %>%
  filter(sie_proceso_indicador_27 == 1) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips27_0 <- dspic %>%
  filter(sie_proceso_indicador_27 == 0) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())
ips27_N <- dspic %>%
  filter(sie_proceso_indicador_27 == '-') %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())

# INDICADOR 01 TOTALES
ips01_p <- full_join(ips01_0, ips01_1, by = 'estado_del_proceso')
ips01_t <- full_join(ips01_p, ips01_N, by = 'estado_del_proceso')
colnames(ips01_t)<- c('estado_del_proceso', 'I01-0', 'I01-1', 'I01-V')

# INDICADOR 04 TOTALES
ips04_p <- full_join(ips04_0, ips04_1, by = 'estado_del_proceso')
ips04_t <- full_join(ips04_p, ips04_N, by = 'estado_del_proceso')
colnames(ips04_t)<- c('estado_del_proceso', 'I04-0', 'I04-1', 'I04-V')

# INDICADOR 05 TOTALES
ips05_p <- full_join(ips05_0, ips05_1, by = 'estado_del_proceso')
ips05_t <- full_join(ips05_p, ips05_N, by = 'estado_del_proceso')
colnames(ips05_t)<- c('estado_del_proceso', 'I05-0', 'I05-1', 'I05-V')

# INDICADOR 06 TOTALES
ips06_p <- full_join(ips06_0, ips06_1, by = 'estado_del_proceso')
ips06_t <- full_join(ips06_p, ips06_N, by = 'estado_del_proceso')
colnames(ips06_t)<- c('estado_del_proceso', 'I06-0', 'I06-1', 'I06-V')

# INDICADOR 09 TOTALES
ips09_p <- full_join(ips09_0, ips09_1, by = 'estado_del_proceso')
ips09_t <- full_join(ips09_p, ips09_N, by = 'estado_del_proceso')
colnames(ips09_t)<- c('estado_del_proceso', 'I09-0', 'I09-1', 'I09-V')

# INDICADOR 11 TOTALES
ips11_p <- full_join(ips11_0, ips11_1, by = 'estado_del_proceso')
ips11_t <- full_join(ips11_p, ips11_N, by = 'estado_del_proceso')
colnames(ips11_t)<- c('estado_del_proceso', 'I11-0', 'I11-1', 'I11-V')

# INDICADOR 15 TOTALES
ips15_p <- full_join(ips15_0, ips15_1, by = 'estado_del_proceso')
ips15_t <- full_join(ips15_p, ips15_N, by = 'estado_del_proceso')
colnames(ips15_t)<- c('estado_del_proceso', 'I15-0', 'I15-1', 'I15-V')

# INDICADOR 17 TOTALES
ips17_p <- full_join(ips17_0, ips17_1, by = 'estado_del_proceso')
ips17_t <- full_join(ips17_p, ips17_N, by = 'estado_del_proceso')
colnames(ips17_t)<- c('estado_del_proceso', 'I17-0', 'I17-1', 'I17-V')

# INDICADOR 19 TOTALES
ips19_p <- full_join(ips19_0, ips19_1, by = 'estado_del_proceso')
ips19_t <- full_join(ips19_p, ips19_N, by = 'estado_del_proceso')
colnames(ips19_t)<- c('estado_del_proceso', 'I19-0', 'I19-1', 'I19-V')

# INDICADOR 21 TOTALES
ips21_p <- full_join(ips21_0, ips21_1, by = 'estado_del_proceso')
ips21_t <- full_join(ips21_p, ips21_N, by = 'estado_del_proceso')
colnames(ips21_t)<- c('estado_del_proceso', 'I21-0', 'I21-1', 'I21-V')

# INDICADOR 22 TOTALES
ips22_p <- full_join(ips22_0, ips22_1, by = 'estado_del_proceso')
ips22_t <- full_join(ips22_p, ips22_N, by = 'estado_del_proceso')
colnames(ips22_t)<- c('estado_del_proceso', 'I22-0', 'I22-1', 'I22-V')

# INDICADOR 23 TOTALES
ips23_p <- full_join(ips23_0, ips23_1, by = 'estado_del_proceso')
ips23_t <- full_join(ips23_p, ips23_N, by = 'estado_del_proceso')
colnames(ips23_t)<- c('estado_del_proceso', 'I23-0', 'I23-1', 'I23-V')

# INDICADOR 25 TOTALES
ips25_p <- full_join(ips25_0, ips25_1, by = 'estado_del_proceso')
ips25_t <- full_join(ips25_p, ips25_N, by = 'estado_del_proceso')
colnames(ips25_t)<- c('estado_del_proceso', 'I25-0', 'I25-1', 'I25-V')

# INDICADOR 26 TOTALES
ips26_p <- full_join(ips26_0, ips26_1, by = 'estado_del_proceso')
ips26_t <- full_join(ips26_p, ips26_N, by = 'estado_del_proceso')
colnames(ips26_t)<- c('estado_del_proceso', 'I26-0', 'I26-1', 'I26-V')

# INDICADOR 27 TOTALES
ips27_p <- full_join(ips27_0, ips27_1, by = 'estado_del_proceso')
ips27_t <- full_join(ips27_p, ips27_N, by = 'estado_del_proceso')
colnames(ips27_t)<- c('estado_del_proceso', 'I27-0', 'I27-1', 'I27-V')

# INDICADORES TOTALES
ips_a <- full_join(ips01_t, ips04_t, by = 'estado_del_proceso')
ips_b <- full_join(ips_a, ips05_t, by = 'estado_del_proceso')
ips_c <- full_join(ips_b, ips06_t, by = 'estado_del_proceso')
ips_d <- full_join(ips_c, ips09_t, by = 'estado_del_proceso')
ips_e <- full_join(ips_d, ips11_t, by = 'estado_del_proceso')
ips_f <- full_join(ips_e, ips15_t, by = 'estado_del_proceso')
ips_g <- full_join(ips_f, ips17_t, by = 'estado_del_proceso')
ips_h <- full_join(ips_g, ips19_t, by = 'estado_del_proceso')
ips_i <- full_join(ips_h, ips21_t, by = 'estado_del_proceso')
ips_j <- full_join(ips_i, ips22_t, by = 'estado_del_proceso')
ips_k <- full_join(ips_j, ips23_t, by = 'estado_del_proceso')
ips_l <- full_join(ips_k, ips25_t, by = 'estado_del_proceso')
ips_m <- full_join(ips_l, ips26_t, by = 'estado_del_proceso')
ips_n <- full_join(ips_m, ips27_t, by = 'estado_del_proceso')

