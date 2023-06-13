# INDICADORES DE POWERBI

# LIBRERIAS
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
dpb2020 <- read_excel("/home/xut/Documents/udaviz/R/studio/sercop/data/CP_2020.xlsx")
dpb2021 <- read_excel("/home/xut/Documents/udaviz/R/studio/sercop/data/CP_2021.xlsx")
dpb2022 <- read_excel("/home/xut/Documents/udaviz/R/studio/sercop/data/CP_2022.xlsx")
dpb2023 <- read_excel("/home/xut/Documents/udaviz/R/studio/sercop/data/CP_2023.xlsx")

# FILTROS SIE
# 2020
f20_sie <- dpb2020 %>%
  filter(`Tipo Contratación` == 'Subasta Inversa Electrónica') %>%
  summarise(n())
# 2021
f21_sie <- dpb2021 %>%
  filter(`Tipo Contratación` == 'Subasta Inversa Electrónica') %>%
  summarise(n())
# 2022
f22_sie <- dpb2022 %>%
  filter(`Tipo Contratación` == 'Subasta Inversa Electrónica') %>%
  summarise(n())
# 2023
f23_sie <- dpb2023 %>%
  filter(`Tipo Contratación` == 'Subasta Inversa Electrónica') %>%
  summarise(n())

# FILTROS GEN
# 2020 - PUBLICACION ESPECIAL
fg20_pe <- dpb2020 %>%
  filter(`Tipo Contratación` == 'Publicación Especial') %>%
  summarise(n())
# 2021 - PUBLICACION ESPECIAL
fg21_pe <- dpb2021 %>%
  filter(`Tipo Contratación` == 'Publicación Especial') %>%
  summarise(n())
# 2022 - PUBLICACION ESPECIAL
fg22_pe <- dpb2022 %>%
  filter(`Tipo Contratación` == 'Publicación Especial') %>%
  summarise(n())
# 2023 - PUBLICACION ESPECIAL
fg23_pe <- dpb2023 %>%
  filter(`Tipo Contratación` == 'Publicación Especial') %>%
  summarise(n())

# FILTROS GEN
# 2020 - GIRO ESPECIFICO DEL NEGOCIO
fg20_ge <- dpb2020 %>%
  filter(`Tipo Contratación` == 'Giro específico del negocio de empresas públicas') %>%
  summarise(n())
# 2021 - GIRO ESPECIFICO DEL NEGOCIO
fg21_ge <- dpb2021 %>%
  filter(`Tipo Contratación` == 'Giro específico del negocio de empresas públicas') %>%
  summarise(n())
# 2022 - GIRO ESPECIFICO DEL NEGOCIO
fg22_ge <- dpb2022 %>%
  filter(`Tipo Contratación` == 'Giro específico del negocio de empresas públicas') %>%
  summarise(n())
# 2023 - GIRO ESPECIFICO DEL NEGOCIO
fg23_ge <- dpb2023 %>%
  filter(`Tipo Contratación` == 'Giro específico del negocio de empresas públicas') %>%
  summarise(n())

# TABLAS COMPARATIVAS

year <- c(2020, 2021, 2022, 2023)

pwb_sie <- c(f20_sie, f21_sie, f22_sie, f23_sie)
uda_sie <- c(21086, 26613, 19211, 0)

pwb_gpe <- c(fg20_pe, fg21_pe, fg22_pe, fg23_pe)
uda_gpe <- c(5327, 2551, 772, 0)

pwb_gge <- c(fg20_ge, fg21_ge, fg22_ge, fg23_ge)
uda_gge <- c(102, 114, 72, 0)


dt_sie <- data.table(year, pwb_sie, uda_sie)
dt_gpe <- data.table(year, pwb_gpe, uda_gpe)
dt_gge <- data.table(year, pwb_gge, uda_gge)
