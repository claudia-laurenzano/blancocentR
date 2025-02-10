#' Sunset palettes
#'
#' Palettes inspired by sunsets in the Canadian Prairies.
#'
#' @format ## `blanco_palettes`
#' An object of class `palettes_palette` with `r length(blanco_palettes)`
#' color palettes. Use `names(blanco_palettes)` to return all palette names.
#' @source <https://github.com/claudia-laurenzano/blancocentR>
#' @author [Claudia Laurenzano](https://github.com/claudia-laurenzano)
#' @seealso [pal_palette()], [pal_colour()]
#' @examples
#' # Get all palettes by name.
#' names(blanco_palettes)
#'
#' # Plot all palettes.
#' plot(blanco_palettes)
"blanco_palettes"

#' @rdname blanco_palettes
#' @format ## `grays`
#' An object of class `palettes_palette` with
#' `r length(grays)` discrete color palettes.
#'  Use `names(grays)` to return all palette names.
"grays"

#' @rdname sunset_palettes
#' @format ## `custom`
#' An object of class `palettes_palette` with
#' `r length(custom)` sequential colour palettes.
#'  Use `names(custom)` to return all palette names.
"custom"

document()
