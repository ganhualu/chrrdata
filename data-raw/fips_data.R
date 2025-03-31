## code to prepare `DATASET` dataset goes here
library(tidyverse)

chrr_2025 <- read_csv('https://www.countyhealthrankings.org/sites/default/files/media/document/analytic_data2025.csv',
                      skip = 1)
# FIPS data
fips <- chrr_2025 %>%
  select(1:5)

usethis::use_data(fips, overwrite = TRUE, compress = "bzip2")

# 2025 measure data in long format
chrr2025 <- chrr_2025 %>%
  select(fipscode, year, starts_with("v")) %>%
  pivot_longer(cols = starts_with("v"),
               names_to = "variable",
               values_to = "value") %>%
  filter(!is.na(value)) %>%
  mutate(measure_id = as.numeric(str_sub(variable, 2, 4)), .after = "year")

usethis::use_data(chrr2025, overwrite = TRUE, compress = "xz")
