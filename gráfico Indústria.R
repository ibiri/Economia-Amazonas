Inds = read.table("https://raw.githubusercontent.com/ibiri/Economia-Amazonas/main/Ind%C3%BAstria.txt", h=T, sep="\t",dec=",")
view(Inds)
head(Inds)
attach(Inds)

Industria_v = ts(IF,start=c(2002,1), end=c(2021,3), freq=12)
library(dygraphs)

lungDeaths <- cbind(Industria_v)
dygraph(lungDeaths)
dygraph(lungDeaths) %>% dyRangeSelector()

dygraph(lungDeaths) %>%
  dySeries("Industria_v", label = "Industria_v") %>%
  dyOptions(stackedGraph = TRUE) %>%
  dyRangeSelector(height = 20)