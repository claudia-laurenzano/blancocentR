## code to prepare `parishes` dataset goes here

# usethis::use_data(parishes, overwrite = TRUE)

parishes <- readxl::read_excel(here::here("..", "..", "..",
                "Documents - Blanco Center Team",
                "Central Data",
                "parishes_regions.xlsx"))

usethis::use_data(parishes, overwrite = TRUE)
