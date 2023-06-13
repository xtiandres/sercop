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
dsie1206 <- read_csv("/home/xut/Documents/udaviz/R/studio/sercop/data/SIE_12062023.csv")
dgpe1206 <- read_csv("/home/xut/Documents/udaviz/R/studio/sercop/data/GPE_12062023.csv")
dgep1206 <- read_csv("/home/xut/Documents/udaviz/R/studio/sercop/data/GEP_12062023.csv")

# FILTROS SIE POWER BI
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

# FILTROS GEN POWER BI
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

# FILTROS GEN POWER BI
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

# FILTROS SIE WEB CRAWLER
# 2020
usie_20 <- filter(dsie1206,
                  tipo_de_contratacion == 'Subasta Inversa Electr�nica' &
                    anio_publicacion == 2020)
# 2021
usie_21 <- filter(dsie1206,
                  tipo_de_contratacion == 'Subasta Inversa Electr�nica' &
                    anio_publicacion == 2021)
# 2022
usie_22 <- filter(dsie1206,
                  tipo_de_contratacion == 'Subasta Inversa Electr�nica' &
                    anio_publicacion == 2022)

# FILTROS GEN PUBLICACION ESPECIAL WEB CRAWLER
# 2020
ugpe_20 <- filter(dgpe1206,
                  tipo_de_contratacion == 'Publicaci�n Especial' &
                    anio_publicacion == 2020)
# 2021
ugpe_21 <- filter(dgpe1206,
                  tipo_de_contratacion == 'Publicaci�n Especial' &
                    anio_publicacion == 2021)
# 2022
ugpe_22 <- filter(dgpe1206,
                  tipo_de_contratacion == 'Publicaci�n Especial' &
                    anio_publicacion == 2022)

# FILTROS GEN EMPRESAS PUBLICAS WEB CRAWLER
# 2020
ugep_20 <- filter(dgep1206,
                  tipo_de_contratacion == 'Empresas P�blicas, Mercantiles o Subsidiarias' &
                    anio_publicacion == 2020)
# 2021
ugep_21 <- filter(dgep1206,
                  tipo_de_contratacion == 'Empresas P�blicas, Mercantiles o Subsidiarias' &
                    anio_publicacion == 2021)
# 2022
ugep_22 <- filter(dgep1206,
                  tipo_de_contratacion == 'Empresas P�blicas, Mercantiles o Subsidiarias' &
                    anio_publicacion == 2022)


# TABLAS COMPARATIVAS

year <- c(2020, 2021, 2022, 2023)

pwb_sie <- c(f20_sie, f21_sie, f22_sie, f23_sie)
uda_sie <- c(sum(usie_20$nro_procesos), sum(usie_21$nro_procesos), sum(usie_22$nro_procesos), 0)
#uda_sie <- c(21086, 26613, 19211, 0)

pwb_gpe <- c(fg20_pe, fg21_pe, fg22_pe, fg23_pe)
uda_gpe <- c(sum(ugpe_20$nro_procesos), sum(ugpe_21$nro_procesos), sum(ugpe_22$nro_procesos), 0)
#uda_gpe <- c(5327, 2551, 772, 0)

pwb_gge <- c(fg20_ge, fg21_ge, fg22_ge, fg23_ge)
uda_gge <- c(sum(ugep_20$nro_procesos), sum(ugep_21$nro_procesos), sum(ugep_22$nro_procesos), 0)
#uda_gge <- c(102, 114, 72, 0)

# TABLAS COMPARATIVAS POWER BI vs WEB CRAWLER
dt_sie <- data.table(year, pwb_sie, uda_sie)
dt_gpe <- data.table(year, pwb_gpe, uda_gpe)
dt_gge <- data.table(year, pwb_gge, uda_gge)
