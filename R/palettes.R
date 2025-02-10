#' Blanco palettes
#'
#' Palettes for a cohesive look across Blanco Center visualizations.
#'
#' @format ## `blanco_palettes`
#' An object of class `palettes_palette` with `r length(blanco_palettes)`
#' color palettes. Use `names(blanco_palettes)` to return all palette names.
#' @source <https://github.com/claudia-laurenzano/blancocentR>
#' @author [Claudia Laurenzano](https://github.com/claudia-laurenzano)
#' @seealso [pal_palette()], [pal_color()]
#' @examples
#' # Get all palettes by name.
#' names(blanco_palettes)
#'
#' # Plot all palettes.
#' plot(blanco_palettes)
"blanco_palettes"

#' @rdname blanco_palettes
#' @format ## `custom`
#' An object of class `palettes_palette` with
#' `r length(custom)` sequential colour palettes.
#'  Use `names(custom)` to return all palette names.
"custom"

#' @rdname blanco_palettes
#' @format ## `gradients`
#' An object of class `palettes_palette` with
#' `r length(gradients)` discrete color palettes.
#'  Use `names(gradients)` to return all palette names.
"gradients"

#' @rdname blanco_palettes
#' @format ## `grays`
#' An object of class `palettes_palette` with
#' `r length(grays)` discrete color palettes.
#'  Use `names(grays)` to return all palette names.
"grays"

#' @rdname blanco_palettes
#' @format ## `misc_pal`
#' An object of class `palettes_palette` with
#' `r length(misc_pal)` sequential colour palettes.
#'  Use `names(misc_pal)` to return all palette names.
"misc_pal"

document()
