## code to prepare `louisiana` dataset goes here

# usethis::use_data(louisiana, overwrite = TRUE)

library(lubridate)
library(dplyr)

year_var <- year(floor_date(today(), unit = "year")) - 2

louisiana <- tidycensus::get_acs(
  geography = "county",
  variables = "B01003_001",
  state = "LA",
  year = year_var,
  geometry = TRUE
) %>%
  dplyr::mutate(
    year = year_var,
    # adjust parish names
    parish_full = stringr::str_remove(NAME, ", Louisiana"),
    parish_full = stringr::str_replace(parish_full, "De Soto", "DeSoto"),
    parish = stringr::str_remove(parish_full, "Parish"),
    parish = stringr::str_trim(parish, side = "both")) %>%
  # rename("FIPS" = GEOID) %>%
  dplyr::left_join(parishes %>% dplyr::select(-name)) %>% # add regions
  dplyr::mutate(pop_density = dplyr::if_else(estimate < 100000, "Rural", "Urban"),
         center = sf::st_centroid(geometry))

usethis::use_data(louisiana, overwrite = TRUE)
