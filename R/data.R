#' Louisiana parish and region data
#'
#' Louisiana's 64 parishes, FIPS codes, and region designations according
#' to different state agencies and organizations.
#'
#' @format A data frame with 64 rows and 17 columns:
#' \describe{
#'   \item{FIPS}{Parish FIPS code}
#'   \item{parish, parish_full}{Parish name with & without "Parish"}
#'   \item{name}{Full parish name including "Parish, Louisiana"}
#'   \item{region_DE, region_DCFS, region_laborforce, region_LDH, region_OJJ}{Region numeric ID}
#'   \item{region_name_DE, region_name_DCFS, region_name_laborforce, region_BLS, region_name_LDH, region_name_OJJ}{Region name ID}
#'   \item{one_acadiana}{Designates parishes within Acadiana region}
#'   \item{metro_BLS}{"Metropolitan area" or "Nonmetropolitan area" as designated by BLS}
#' }
#' @source LAPDD, DCFS, One Acadiana, LWC, BLS, LDH, OJJ
"parishes"

#' Louisiana's 64 parishes, FIPS codes, and region designations according
#' to different state agencies and organizations (long format).
#'
#' @format A data frame with 393 rows and 8 columns:
#' \describe{
#'   \item{FIPS}{Parish FIPS code}
#'   \item{parish, parish_full}{Parish name with & without "Parish"}
#'   \item{name}{Full parish name including "Parish, Louisiana"}
#'   \item{metro_BLS}{"Metropolitan area" or "Nonmetropolitan area" as designated by BLS}
#'   \item{org}{Name of agency or organization for region designation}
#'   \item{region_number}{Region numeric ID}
#'   \item{region_name}{Region name ID}
#' }
#' @source LAPDD, DCFS, One Acadiana, LWC, BLS, LDH, OJJ
"parishes_long"


#' Louisiana's 64 parishes, FIPS codes, and region designations according
#' to different state agencies and organizations, parish geometry, and parish centers.
#'
#' @format A data frame/sf object with 64 rows and 17 columns:
#' \describe{
#'   \item{GEOID, FIPS}{Parish FIPS code in character & numeric formats}
#'   \item{NAME}{Full parish name including "Parish, Louisiana"}
#'   \item{variable}{Variable name for population density, consists of Census table and row number}
#'   \item{estimate}{Estimate}
#'   \item{moe}{Margin of error}
#'   \item{year}{Year for which ACS-5 Year estimates were retrieved}
#'   \item{parish, parish_full}{Parish name with & without "Parish"}
#'   \item{region_DE, region_DCFS, region_laborforce, region_LDH, region_OJJ}{Region numeric ID}
#'   \item{region_name_DE, region_name_DCFS, region_name_laborforce, region_BLS, region_name_LDH, region_name_OJJ}{Region name ID}
#'   \item{one_acadiana}{Designates parishes within Acadiana region}
#'   \item{metro_BLS}{"Metropolitan area" or "Nonmetropolitan area" as designated by BLS}
#'   \item{geometry}{MULTIPOLYGON, parish outline}
#'   \item{pop_density}{Rural/Urban, threshold = 100000}
#'   \item{center}{POINT, parish center point}
#' }
#' @source U.S. Census Bureau, 'tidycensus' package, see sources for 'parishes'
"louisiana"

#' Louisiana's 64 parishes, FIPS codes, and region designations according
#' to different state agencies and organizations, parish geometry, and parish centers.
#'
#' @format A data frame/sf object with 393 rows and 16 columns:
#' \describe{
#'   \item{GEOID, FIPS}{Parish FIPS code in character & numeric formats}
#'   \item{NAME}{Full parish name including "Parish, Louisiana"}
#'   \item{variable}{Variable name for population density, consists of Census table and row number}
#'   \item{estimate}{Estimate}
#'   \item{moe}{Margin of error}
#'   \item{year}{Year for which ACS-5 Year estimates were retrieved}
#'   \item{parish, parish_full}{Parish name with & without "Parish"}
#'   \item{metro_BLS}{"Metropolitan area" or "Nonmetropolitan area" as designated by BLS}
#'   \item{pop_density}{Rural/Urban, threshold = 100000}
#'   \item{org}{Name of agency or organization for region designation}
#'   \item{region_number}{Region numeric ID}
#'   \item{region_name}{Region name ID}
#'   \item{geometry}{MULTIPOLYGON, parish outline}
#'   \item{center}{POINT, parish center point}
#' }
#' @source U.S. Census Bureau, 'tidycensus' package, see sources for 'parishes'
"louisiana_long"

