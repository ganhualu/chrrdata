## code to prepare `DATASET` dataset goes here
library(tidyverse)

chrr_2025 <- read_csv('https://www.countyhealthrankings.org/sites/default/files/media/document/analytic_data2025.csv',
                      skip = 1)
# FIPS data
fips <- chrr_2025 %>%
  select(1:5)

usethis::use_data(fips, overwrite = TRUE)
