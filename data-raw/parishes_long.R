## code to prepare `parishes_long` dataset goes here

library(tidyverse)
parishes_long <- parishes %>%
  mutate(across(region_DE:last_col(), as.character)) %>%
  pivot_longer(cols = c(contains("region"), one_acadiana),
               names_to = "temp_org",
               values_to = "label") %>%

  mutate(type = if_else(str_detect(label, "\\d"), "region_number", "region_name"),
         org = str_remove_all(temp_org, "region_name_|region_")) %>%
  pivot_wider(id_cols = c(FIPS:name, metro_BLS, org),
              names_from = type,
              values_from = label) %>%
  select(-`NA`) %>%
  filter(!if_all(c(region_number, region_name), is.na))

usethis::use_data(parishes_long, overwrite = TRUE)
