
# About -------------------------------------------------------------------

# dev script to develop package {blancocentR}


# Setup-------------------------------------------------------------------

library(devtools)

# run once
# create_package("blancocentR")

devtools::check()

# run once
# use_git_config(user.name = "claudia-laurenzano",
#                user.email = "claudialaurenzano@gmail.com")
use_git()



# License -----------------------------------------------------------------

usethis::use_mit_license("Claudia Laurenzano")

devtools::check()




# Package documentation ---------------------------------------------------

# run once
# use_package_doc() # creates blancocentR-package.R



# Dependencies ------------------------------------------------------------

# theme
use_package("ggplot2", "Imports")
use_package("ggtext", "Imports")
use_package("scales", "Imports")
use_package("showtext", "Imports")
use_package("sysfonts", "Imports")
use_package("colorspace", "Imports")

# colors
use_package("monochromeR", "Imports")
use_package("dplyr", "Imports")

# louisiana
use_pipe()
use_package("dplyr", "Imports")
use_package("tidyr", "Imports")
use_package("sf", "Imports")

devtools::document()



# Description -------------------------------------------------------------

usethis::use_description(
  fields = list(
    Title = "A helper package for Blanco Center staff",
    `Authors@R` = utils::person(
      "Claudia", "Laurenzano",
      email = "claudialaurenzano@gmail.com",
      role = c("aut", "cre"),
      comment = c(ORCID = "0000-0003-1406-8658")
    ),
    Description = paste0(
      "A package for Blanco Center staff to facilitate a cohesive look across ",
      "data visualizations. This package includes ggplot2 theme, colors and color ",
      "palettes, two data files on Louisiana's 64 parishes and region designations ",
      "by different agencies and organizations (one with and one without geometry), ",
      "and a function to join parish polygons into region polygons. ",
      "Some palettes were built using the 'monochromeR' package which provides ",
      "methods for blending colors. Shapefiles and population data from the U.S. ",
      "Census were acquired via the 'tidycensus' package. "
    ),
    URL = "https://github.com/claudia-laurenzano/blancocentR/tree/main",
    BugReports = "https://github.com/claudia-laurenzano/blancocentR/issues"
  )
)



# Theme -------------------------------------------------------------------


use_r("theme_bc") # creates/opens to edit R script

# write function in R script

devtools::load_all()

# document function using roxygen skeleton
devtools::document()

devtools::check()



# Colors ------------------------------------------------------------------

use_r("palettes") # creates/opens to edit R script

# the palette function will be exported thanks to the @export tag in the
# roxygen documentation

# to export named colors outside of functions, NAMESPACE needs to specify that
# they will be exported as well
# add @export obj for each object 'obj' in blancocentR-package.R

devtools::load_all()

# document function using roxygen skeleton
devtools::document()

devtools::check()



# Geography ---------------------------------------------------------------

# run once (or when updated)
# parishes <- readxl::read_excel(here::here("..", "..", "..",
#                 "Documents - Blanco Center Team",
#                 "Central Data",
#                 "parishes_regions.xlsx"))
#
# usethis::use_data(parishes)

use_data_raw(name = "louisiana") # creates/opens `louisiana` object
# usethis::use_data(louisiana, overwrite = TRUE)

# create documentation for data
use_r("data") # creates/opens to edit R script

devtools::load_all()

# document function using roxygen skeleton
devtools::document()

devtools::check()



# ReadMe ------------------------------------------------------------------

usethis::use_readme_rmd()



# Vignette ----------------------------------------------------------------

usethis::use_vignette("blancocentR")



# github page -------------------------------------------------------------


usethis::use_pkgdown_github_pages()
