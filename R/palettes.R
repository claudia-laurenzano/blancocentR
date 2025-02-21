

# Grays -------------------------------------------------------------------

dark_text <- "#1A242F"
light_text <- "#575E66"
mid_gray <- "#94989D"
light_gray <- "#D1D3D5"



# Custom ------------------------------------------------------------------

ull_red <- "#a00b0b" # UL red
col_la <- "#4776aa" # Louisiana blue
col_us <- "#711F30" # U.S. red
col_ur <- "#d24a41" # misc_pal$strawberry
col_ru <- "#23464f" # misc_pal$darkteal



# Gradients ---------------------------------------------------------------


#' Color gradient palette for Louisiana
#'
#' Create a gradient color for Louisiana.
#'
#' @param base Base color to be blended with "white". Default = "#1C2F43".
#' @param n Number of shades in the palette. Default = 7.
#'
#' @return A character object.
#' @export
#'
#' @examples
#' \dontrun{
#' la_gradient_palette()
#' la_gradient_palette(n = 5)
#' }
la_gradient_palette <- function(base = "#1C2F43", n = 7) {
  la_gradient <- monochromeR::generate_palette(
    base,
    blend_colour = "white",
    n_colours = n)

  return(la_gradient)
}


#' Color gradient palette for the U.S.
#'
#' Create a gradient color for the U.S.
#'
#' @param base Base color to be blended with "white". Default = "#5A1826".
#' @param n Number of shades in the palette. Default = 7.
#'
#' @return A character object.
#' @export
#'
#' @examples
#' \dontrun{
#' us_gradient_palette()
#' us_gradient_palette(n = 5)
#' }
us_gradient_palette <- function(base = "#5A1826", n = 7) {
  us_gradient <- monochromeR::generate_palette(
    base,
    blend_colour = "white",
    n_colours = n)

  return(us_gradient)
}


#' Color gradient palette for urban areas.
#'
#' Create a gradient color for urban areas.
#'
#' @param base Base color to go darker and lighter. Default = "#d24a41".
#' @param n Number of shades in the palette. Default = 7.
#'
#' @return A character object.
#' @export
#'
#' @examples
#' \dontrun{
#' ur_gradient_palette()
#' ur_gradient_palette(n = 5)
#' }
ur_gradient_palette <- function(base = "#d24a41", n = 7) {
  ur_gradient <- monochromeR::generate_palette(
    base,
    "go_both_ways",
    n_colours = n + 2)

  return(ur_gradient[1:n + 1])
}


#' Color gradient palette for rural areas.
#'
#' Create a gradient color for rural areas.
#'
#' @param base Base color to go darker and lighter. Default = "#23464f".
#' @param n Number of shades in the palette. Default = 7.
#'
#' @return A character object.
#' @export
#'
#' @examples
#' \dontrun{
#' ru_gradient_palette()
#' ru_gradient_palette(n = 5)
#' }
ru_gradient_palette <- function(base = "#23464f", n = 7) {
  ru_gradient <- monochromeR::generate_palette(
    base,
    "go_both_ways",
    n_colours = n + 2)

  return(ru_gradient)[1:n + 1]
}


# Regions -----------------------------------------------------------------


## DCFS ------------------------------------------------------------------

#' Color palette for DCFS regions
#'
#' Colors are defined by region number or region name. The shade for region
#' 9 - Monroe can be darkened for small area geoms (e.g., geom_point()).
#'
#' @param region System used to identify regions: 'number' or 'name'.
#' @param darken Factor by which the shade for region 9 - Monroe gets darkened. Default = 0.
#'
#' @return A character object of length 9.
#' @export
#'
#' @examples
#' \dontrun{
#' dcfs_palette()
#' dcfs_palette(region = "number", darken = 1)
#' }
dcfs_palette <- function(region = "name", darken = 0) {

  if (!(darken %in% seq(0, 2, 1))) {
    stop("darken must be a natural number between 0 and 2.")
  }

  if (!(region %in% c("name", "number"))) {
    stop("region must be either 'name' or 'number'.")
  }

  fct <- darken * 0.09
  dcfs_num <- c("1" = "#27415d",
            "2" = "#556765",
            "3" = "#77839b",
            "4" = "#b2a28b",
            "5" = "#ac5341",
            "6" = "#d2a95b",
            "7" = "#62a3e9",
            "8" = "#407f8f",
            "9" = "#c9f3ef"
  )

  dcfs_num <- replace(dcfs_num,
                      dcfs_num == "#c9f3ef",
                      colorspace::darken("#c9f3ef", fct))

  dcfs_nm <- c("Orleans"      = "#27415d",
               "Baton Rouge"  = "#556765",
               "Covington"    = "#77839b",
               "Thibodaux"    = "#b2a28b",
               "Lafayette"    = "#ac5341",
               "Lake Charles" = "#d2a95b",
               "Alexandria"   = "#62a3e9",
               "Shreveport"   = "#407f8f",
               "Monroe"   = "#c9f3ef")

  dcfs_nm <- replace(dcfs_nm,
                     dcfs_nm == "#c9f3ef",
                     colorspace::darken("#c9f3ef", fct))

  if(region == "number") {return(dcfs_num)} else {
    if(region == "name") {return(dcfs_nm)}
  }
}



## LDH -------------------------------------------------------------------

#' Color palette for LDH regions
#'
#' Colors are defined by region number or region name. The shade for region
#' 8 - Northeast Louisiana can be darkened for small area geoms (e.g., geom_point()).
#'
#' @param region System used to identify regions: 'number' or 'name'.
#' @param darken Factor by which the shade for region 8 - Northeast Louisiana gets darkened. Default = 0.
#'
#' @return A character object of length 9.
#' @export
#'
#' @examples
#' \dontrun{
#' ldh_palette()
#' ldh_palette(region = "number", darken = 1)
#' }
ldh_palette <- function(region = "name", darken = 0) {

  if (!(darken %in% seq(0, 2, 1))) {
    stop("darken must be a natural number between 0 and 2.")
  }

  if (!(region %in% c("name", "number"))) {
    stop("region must be either 'name' or 'number'.")
  }

  fct <- darken * 0.09
  ldh_num <- c("1" = "#27415d",
               "2" = "#556765",
               "3" = "#b2a28b",
               "5" = "#d2a95b",
               "4" = "#ac5341",
               "6" = "#62a3e9",
               "7" = "#407f8f",
               "8" = "#c9f3ef",
               "9" = "#77839b"
  )

  ldh_num <- replace(ldh_num,
                      ldh_num == "#c9f3ef",
                      colorspace::darken("#c9f3ef", fct))

  ldh_nm <- c("Greater New Orleans Area"  = "#27415d",
              "Capital Area"              = "#556765",
              "South Central Louisiana"   = "#b2a28b",
              "Southwest Louisiana"       = "#d2a95b",
              "Acadiana"                  = "#ac5341",
              "Central Louisiana"         = "#62a3e9",
              "Northwest Louisiana"       = "#407f8f",
              "Northeast Louisiana"       = "#c9f3ef",
              "Northshore Area"           = "#77839b")

  ldh_nm <- replace(ldh_nm,
                     ldh_nm == "#c9f3ef",
                     colorspace::darken("#c9f3ef", fct))

  if(region == "number") {return(ldh_num)} else {
    if(region == "name") {return(ldh_nm)}
  }
}



## DE --------------------------------------------------------------------

#' Color palette for Digital Equity regions (LAPDD)
#'
#' Colors are defined by region number or region name. The shade for region
#' 8 - North Delta can be darkened for small area geoms (e.g., geom_point()).
#' Regions via the Louisiana Association of Planning and Development District.
#'
#' @param region System used to identify regions: 'number' or 'name'.
#' @param darken Factor by which the shade for region 8 - 8 - North Delta gets darkened. Default = 0.
#'
#' @return A character object of length 8.
#' @export
#'
#' @examples
#' \dontrun{
#' de_palette()
#' de_palette(region = "number", darken = 1)
#' }
de_palette <- function(region = "name", darken = 0) {

  if (!(darken %in% seq(0, 2, 1))) {
    stop("darken must be a natural number between 0 and 2.")
  }

  if (!(region %in% c("name", "number"))) {
    stop("region must be either 'name' or 'number'.")
  }

  fct <- darken * 0.09
  de_num <- c("1" = "#27415d",
              "2" = "#556765",
              "3" = "#b2a28b",
              "4" = "#ac5341",
              "5" = "#d2a95b",
              "6" = "#62a3e9",
              "7" = "#407f8f",
              "8" = "#c9f3ef"
  )

  de_num <- replace(de_num,
                     de_num == "#c9f3ef",
                     colorspace::darken("#c9f3ef", fct))

  de_nm <- c("Orleans" = "#27415d",
             "Capital Region" = "#556765",
             "South Central" = "#b2a28b",
             "Acadiana" = "#ac5341",
             "Southwest" = "#d2a95b",
             "Kisatchie-Delta" = "#62a3e9",
             "Coordinating and Development District" = "#407f8f",
             "North Delta" = "#c9f3ef")

  de_nm <- replace(de_nm,
                    de_nm == "#c9f3ef",
                    colorspace::darken("#c9f3ef", fct))

  if(region == "number") {return(de_num)} else {
    if(region == "name") {return(de_nm)}
  }
}


# Misc --------------------------------------------------------------------

#' Color palette for miscellaneous uses
#'
#' Create a color palette with 21 colors. Please note that the shade 'vintageviolet'
#' ("#77839b") is used in some regional color palettes (e.g., DCFS, LDH).
#'
#' @param n Number of colors generated. Default = 21.
#' @return A character of length 21, a list of length 21.
#' @export
#'
#' @examples
#' \dontrun{
#' misc_palette()
#' misc_palette(get_list = TRUE)
#' }
misc_palette <- function(n = 21) {
  misc_pal_cols <- c(
    "#243e56",
    "#62c3dc",
    "#ae9837",
    "#d24a41",
    "#4e7a59",
    "#852f29",
    "#5ea2e3",
    "#23464f",
    "#94b3b0",
    "#f9785e",
    "#8f555a",
    "#e8d5a6",
    "#253a2a",
    "#bcefde",
    "#eb8d83",
    "#5e3934",
    "#7fc791",
    "#3c424e",
    "#4f2f32",
    "#77839b",
    "#a8b9da"
  )

  return(misc_pal_cols[1:n])
}


misc_pal <- list(
  "midnight" = "#243e56",
  "mint" = "#bcefde",
  "berry" = "#8f555a",
  "sand" = "#e8d5a6",
  "mustard" = "#ae9837",

  "charcoal" = "#3c424e",
  "jadegreen" = "#4e7a59",
  "pastelgreen" = "#7fc791",
  "deepforest" = "#253a2a",
  "darkteal" = "#23464f", # urban

  "cloudfree" = "#62c3dc",
  "midblue" = "#5ea2e3",
  "silver" = "#94b3b0",
  "strawberry" = "#d24a41", # rural
  "peachy" = "#f9785e",

  "blush" = "#eb8d83",
  "darkcherry" ="#852f29",
  "darkplum" = "#4f2f32",
  "darkmaroon" ="#5e3934",
  "lilac" = "#a8b9da",

  "vintageviolet" = "#77839b"
)

# export(misc_pal)
