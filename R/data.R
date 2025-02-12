#' Louisiana parish and region data
#'
#' Louisiana's 64 parishes and FIPS codes and region designations according
#' to different state agencies and organizations
#'
#' @format ## `parishes`
#' A data frame with 64 rows and 17 columns:
#' \describe{
#'   \item{FIPS}{Parish FIPS code}
#'   \item{parish, parish_full}{Parish name with & without "Parish"}
#'   \item{name}{Full parish name including "Parish, Louisiana"}
#'   \item{region_DE, region_DCFS, region_laborforce, region_LDH, region_OJJ}{Region numeric ID}
#'   \item{region_name_DE, region_name_DCFS, region_name_laborforce, region_BLS, region_name_LDH, region_name_OJJ}{Region name ID}
#'   \item{one_acadiana}{Designates parishes within Acadiana region}
#'   \item{metro_BLS}{Name of metropolitan area; "Nonmetropolitan area" where not applicable}
#' }
#' @source LAPDD, DCFS, One Acadiana, LWC, BLS, LDH, OJJ
"parishes"
