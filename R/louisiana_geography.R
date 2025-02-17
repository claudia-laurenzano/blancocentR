

# Region geometry ---------------------------------------------------------

#' Summarize parish-level geometry by region
#'
#' `get_region_geometry()` summarizes parish polygons to a region polygon and
#' returns an sf object with the region identifier(s) based on your region
#' input, a geometry column containing the region polygon, and a center column
#' with the region's center.
#' @param df An sf object
#' @param region_number Column with numeric or alphanumeric region ID
#' @param region_name Column with region name ID
#'
#' @return An sf object
#' @export
#'
#' @examples
#' get_region_geometry(louisiana, region_DCFS, region_name_DCFS)
get_region_geometry <- function(df, region_number, region_name){
  df %>%
    dplyr::group_by({{region_number}}, {{region_name}}) %>%
    dplyr::summarize(dplyr::across(geometry, ~sf::st_union(.))) %>%
    dplyr::ungroup() %>%
    tidyr::drop_na({{region_number}}) %>%
    dplyr::mutate(center = sf::st_centroid(geometry))
}


