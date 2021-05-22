rm(list=ls())

library(dplyr)
library(tidyverse)
library(lubridate)
library(ggplot2)
library(zoo)



dadosE = read.table("https://raw.githubusercontent.com/ibiri/Economia-Amazonas/main/economia_AM.txt", h=T, sep="\t",dec=",")
view(dadosE)
head(dadosE)
attach(dadosE)

#-----------------------------------------------------------------------------------------

Emprego = ts(Emprego,start=c(2016,1), end=c(2021,2), freq=12)
Industria = ts(Ind√∫stria,start=c(2016,1), end=c(2021,2), freq=12)
Comercio = ts(Com√.rcio,start=c(2016,1), end=c(2021,2), freq=12)

#-----------------------------------------------------------------------------------------



  

  

