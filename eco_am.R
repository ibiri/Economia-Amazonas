rm(list=ls())

#Pacotes
library(dplyr)
library(tidyverse)
library(lubridate)
library(ggplot2)
library(zoo)

#-----------------------------------------------------------------------------------------

dadosE = read.table("https://raw.githubusercontent.com/ibiri/Economia-Amazonas/main/economia_AM.txt", h=T, sep="\t",dec=",")
view(dadosE)
head(dadosE)
attach(dadosE)

#-----------------------------------------------------------------------------------------

Emprego = ts(Emprego,start=c(2016,1), end=c(2021,2), freq=12)
Industria = ts(Indústria,start=c(2016,1), end=c(2021,2), freq=12)
Comercio = ts(Comércio,start=c(2016,1), end=c(2021,2), freq=12)

#-----------------------------------------------------------------------------------------

as_tibble(dadosE)

# Filtrando o mês de Fevereiro de 2020
fev2020 <- dadosE %>%
  filter(Ano == 2020 &
           Mês == "FEV")

# Emprego de fevereiro de 2020
emprego0220 = fev2020[, 3]

###############################################

# Filtrando o mês de Fevereiro de 2020
fev2021 <- dadosE %>%
  filter(Ano == 2021 &
           Mês == "FEV")

# Emprego de fevereiro de 2020
emprego0221 = fev2021[, 3]

# Variação fev 2020 / fev 2021

varemprego = ((emprego0221/emprego0220)-1)*100
varemprego

#-----------------------------------------------------------------------------------------
  

  

