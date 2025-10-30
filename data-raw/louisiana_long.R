## code to prepare `louisiana_long` dataset goes here

data(louisiana)

louisiana_long <- louisiana %>%
  select(-c(contains("region"), "one_acadiana")) %>%
  full_join(
    parishes_long %>% select(-name),
    by = c("parish", "parish_full", "metro_BLS", "FIPS"))

usethis::use_data(louisiana_long, overwrite = TRUE)
