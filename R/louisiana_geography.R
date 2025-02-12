

# Region geometry ---------------------------------------------------------

#' Title
#'
#' @param df A dataframe or tibble.
#' @param region_number Column with numeric or alphanumeric region ID
#' @param region_name Column with region name ID
#'
#' @return A dataframe or tibble.
#' @export
#'
#' @examples
#' get_region_geometry(louisiana, region_DCFS, region_name_DCFS)
get_region_geometry <- function(df, region_number, region_name){
  df %>%
    dplyr::group_by({{region_number}}, {{region_name}}) %>%
    dplyr::summarize(across(geometry, ~sf::st_union(.))) %>%
    dplyr::ungroup() %>%
    tidyr::drop_na({{region_number}}) %>%
    dplyr::mutate(center = sf::st_centroid(geometry))
}


