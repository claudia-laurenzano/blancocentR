## code to prepare `colors_bc` dataset goes here

# usethis::use_data(colors_bc, overwrite = TRUE)

library(palettes)


# Grays -------------------------------------------------------------------

grays <- pal_palette(
  dark_text = "#1A242F",
  light_text = "#575E66",
  mid_gray = "#94989D",
  light_gray = "#D1D3D5"
)

plot(grays)
usethis::use_data(grays, overwrite = TRUE)



# Custom ------------------------------------------------------------------

custom <- pal_palette(
  ull_red = "#a00b0b", # UL red
  col_la = "#4776aa", # Louisiana blue
  col_us = "#711F30", # U.S. red
  col_ur = "#d24a41", # misc_pal$strawberry
  col_ru = "#23464f" # misc_pal$darkteal
)

plot(custom)
usethis::use_data(custom, overwrite = TRUE)



# Gradients ---------------------------------------------------------------

gradients <- pal_palette(
  la_gradient = pal_ramp(pal_color(c("#1C2F43", "white")), n = 7),
  us_gradient = pal_ramp(pal_color(c("#5A1826", "white")), n = 7),
  ur_gradient = pal_ramp(pal_color(c("#62221E", "#EAAAA6")), n = 5),
  ru_gradient = pal_ramp(pal_color(c("#102024", "#98A8AC")), n = 5)
)

plot(gradients)
usethis::use_data(gradients, overwrite = TRUE)



# Regions DE --------------------------------------------------------------

# Planning and Development (Digital Equity)

# large area regions
list_de <- list(
  "1" = "#27415d",
  "2" = "#556765",
  "3" = "#b2a28b",
  "4" = "#ac5341",
  "5" = "#d2a95b",
  "6" = "#62a3e9",
  "7" = "#407f8f",
  "8" = "#c9f3ef"
)

cols_de <- as_palette(list_de)
plot(cols_de)
usethis::use_data(cols_de, overwrite = TRUE)

list_de_nm <- list(
  "Orleans" = "#27415d",
  "Capital Region" = "#556765",
  "South Central" = "#b2a28b",
  "Acadiana" = "#ac5341",
  "Southwest" = "#d2a95b",
  "Kisatchie-Delta" = "#62a3e9",
  "Coordinating and Development District" = "#407f8f",
  "North Delta" = "#c9f3ef")

cols_de_nm <- as_palette(list_de_nm)
usethis::use_data(cols_de_nm, overwrite = TRUE)

# small area regions (1)
cols_de1 <- as_palette(replace(list_de, list_de == "#c9f3ef", "#B8DAD7"))
cols_de1_nm = as_palette(replace(list_de_nm, list_de_nm == "#c9f3ef", "#B8DAD7"))

usethis::use_data(cols_de1, overwrite = TRUE)
usethis::use_data(cols_de1_nm, overwrite = TRUE)

# small area regions (2)
cols_de2 <- as_palette(replace(list_de, list_de == "#c9f3ef", "#9FCCC8"))
cols_de2_nm = as_palette(replace(list_de_nm, list_de_nm == "#c9f3ef", "#9FCCC8"))

usethis::use_data(cols_de2, overwrite = TRUE)
usethis::use_data(cols_de2_nm, overwrite = TRUE)



# Regions DCFS ------------------------------------------------------------

# DCFS regions

list_dcfs = list("1" = "#27415d",
                 "2" = "#556765",
                 "3" = "#77839b",
                 "4" = "#b2a28b",
                 "5" = "#ac5341",
                 "6" = "#d2a95b",
                 "7" = "#62a3e9",
                 "8" = "#407f8f",
                 "9" = "#c9f3ef")

cols_dcfs <- as_palette(list_dcfs)
usethis::use_data(cols_dcfs, overwrite = TRUE)

list_dcfs_nm = list("Orleans"      = "#27415d",
                    "Baton Rouge"  = "#556765",
                    "Covington"    = "#77839b",
                    "Thibodaux"    = "#b2a28b",
                    "Lafayette"    = "#ac5341",
                    "Lake Charles" = "#d2a95b",
                    "Alexandria"   = "#62a3e9",
                    "Shreveport"   = "#407f8f",
                    "Monroe"   = "#c9f3ef")

cols_dcfs_nm <- as_palette(list_dcfs_nm)
usethis::use_data(cols_dcfs_nm, overwrite = TRUE)

# small area regions (1)
cols_dcfs1 <- as_palette(replace(list_dcfs, list_dcfs == "#c9f3ef", "#B8DAD7"))
cols_dcfs1_nm = as_palette(replace(list_dcfs_nm, list_dcfs_nm == "#c9f3ef", "#B8DAD7"))

usethis::use_data(cols_dcfs1, overwrite = TRUE)
usethis::use_data(cols_dcfs1_nm, overwrite = TRUE)


# small area regions (2)
cols_dcfs2 <- as_palette(replace(list_dcfs, list_dcfs == "#c9f3ef", "#9FCCC8"))
cols_dcfs2_nm = as_palette(replace(list_dcfs_nm, list_dcfs_nm == "#c9f3ef", "#9FCCC8"))

usethis::use_data(cols_dcfs2, overwrite = TRUE)
usethis::use_data(cols_dcfs2_nm, overwrite = TRUE)



# Regions LDH -------------------------------------------------------------

# LDH regions

list_ldh = list(
  "1" = "#27415d",
  "2" = "#556765",
  "3" = "#b2a28b",
  "5" = "#d2a95b",
  "4" = "#ac5341",
  "6" = "#62a3e9",
  "7" = "#407f8f",
  "8" = "#c9f3ef",
  "9" = "#77839b"
)

cols_ldh <- as_palette(list_ldh)
usethis::use_data(cols_ldh, overwrite = TRUE)

list_ldh_nm = list(
  "Greater New Orleans Area"  = "#27415d",
  "Capital Area"              = "#556765",
  "South Central Louisiana"   = "#b2a28b",
  "Southwest Louisiana"       = "#d2a95b",
  "Acadiana"                  = "#ac5341",
  "Central Louisiana"         = "#62a3e9",
  "Northwest Louisiana"       = "#407f8f",
  "Northeast Louisiana"       = "#c9f3ef",
  "Northshore Area"           = "#77839b"
)

cols_ldh_nm <- as_palette(list_ldh_nm)
usethis::use_data(cols_ldh_nm, overwrite = TRUE)

# small area regions (1)
cols_ldh1 <- as_palette(replace(list_ldh, list_ldh == "#c9f3ef", "#B8DAD7"))
cols_ldh1_nm = as_palette(replace(list_ldh_nm, list_ldh_nm == "#c9f3ef", "#B8DAD7"))

usethis::use_data(cols_ldh1, overwrite = TRUE)
usethis::use_data(cols_ldh1_nm, overwrite = TRUE)


# small area regions (2)
cols_ldh2 <- as_palette(replace(list_ldh, list_ldh == "#c9f3ef", "#9FCCC8"))
cols_ldh2_nm = as_palette(replace(list_ldh_nm, list_ldh_nm == "#c9f3ef", "#9FCCC8"))

usethis::use_data(cols_ldh2, overwrite = TRUE)
usethis::use_data(cols_ldh2_nm, overwrite = TRUE)



# Misc --------------------------------------------------------------------

misc_pal = pal_palette(
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

plot(misc_pal)
usethis::use_data(misc_pal, overwrite = TRUE)


# All palettes ------------------------------------------------------------

blanco_palettes <- c(
  grays,
  custom,
  gradients,

  cols_de,
  cols_de1,
  cols_de2,
  cols_de_nm,
  cols_de1_nm,
  cols_de2_nm,

  cols_dcfs,
  cols_dcfs1,
  cols_dcfs2,
  cols_dcfs_nm,
  cols_dcfs1_nm,
  cols_dcfs2_nm,

  cols_ldh,
  cols_ldh1,
  cols_ldh2,
  cols_ldh_nm,
  cols_ldh1_nm,
  cols_ldh2_nm,

  misc_pal
)

usethis::use_data(blanco_palettes, overwrite = TRUE)
