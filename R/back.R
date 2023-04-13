# FILTROS DAVID
nspic <- filter(dspic,
                estado_del_proceso == 'Finalizado a solicitud del contratista')

fsc01 <- dspic %>%
  filter(estado_del_proceso == 'Finalizado a solicitud del contratista') %>%
  group_by(sie_proceso_indicador_01) %>%
  summarise(n())
fsc04 <- dspic %>%
  filter(estado_del_proceso == 'Finalizado a solicitud del contratista') %>%
  group_by(sie_proceso_indicador_04) %>%
  summarise(n())
fsc05 <- dspic %>%
  filter(estado_del_proceso == 'Finalizado a solicitud del contratista') %>%
  group_by(sie_proceso_indicador_05) %>%
  summarise(n())
fsc06 <- dspic %>%
  filter(estado_del_proceso == 'Finalizado a solicitud del contratista') %>%
  group_by(sie_proceso_indicador_06) %>%
  summarise(n())



# FILTROS DAVID
var01 <- dspic %>%
  filter(sie_proceso_indicador_01 == 1) %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())


# FILTROS DAVID
var01 <- long_data %>%
  filter(variable == 'sie_proceso_indicador_01') %>%
  group_by(estado_del_proceso) %>%
  summarise(value = n())