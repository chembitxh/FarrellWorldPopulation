library(readxl)
library(tidyverse)

WorldPopulation <- read_excel("data-raw/World_Population.xlsx",
                              sheet="ESTIMATES",
                              range="C17:BZ306")

WorldPopulation2 <- WorldPopulation %>%
  filter(Type == "Country/Area") %>%
  select( 'Country Name' = 'Region, subregion, country or area *',
          '1950':'2020')
