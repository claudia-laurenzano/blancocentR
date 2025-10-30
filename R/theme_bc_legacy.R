
# Theme -------------------------------------------------------------------

#' A ggplot2 theme for Blanco Center visualizations
#'
#' `theme_bc_legacy()` adds the Blanco Center theme to any plot created using `ggplot()`.
#' Customize plot elements like font family and color and axis colors and line sizes.
#' Grid lines for x and y axes can be added, or all axes can be removed, e.g. for maps.
#' Note: This is the legacy version of the Blanco Center theme function (developed in 2023).
#' For the updated version, use theme_bc(), developed Fall 2025.
#'
#' @param title_font Font used for titles: plot title, axis titles, legend title.
#' @param base_font Font used for all other text.
#' @param dark_text Color used for axis and legend titles.
#' @param light_text Color used for everything else, except plot title.
#' @param void TRUE or FALSE: removes all axis elements. Suggested for maps.
#' @param grid_x TRUE or FALSE: adds x gridlines.
#' @param grid_y TRUE or FALSE: adds y gridlines.
#' @param base_size Base text size in pts.
#' @param base_line_size Base line size in pts.
#' @param base_rect_size Base rectangle size in pts.
#'
#' @importFrom ggplot2 '%+replace%'
#' @return A ggplot2 theme.
#' @export
#'
#' @examples
#' \dontrun{
#' theme_bc_legacy(title_font = "Bitter", base_font = "Quicksand", void = TRUE)
#' }
theme_bc_legacy <- function(title_font = "Bitter",
                     base_font = "Quicksand",
                     dark_text = "#1A242F",
                     light_text = "#575E66",
                     void = FALSE,
                     grid_x = FALSE,
                     grid_y = FALSE,
                     base_size = 12,
                     base_line_size = base_size / 22,
                     base_rect_size = base_size / 22) {

  required_pkgs <- c("ggplot2", "sysfonts", "showtext", "ggtext")
  missing_pkgs <- required_pkgs[!vapply(required_pkgs, requireNamespace, logical(1), quietly = TRUE)]

  if (length(missing_pkgs)) {
    stop(
      "theme_bc_legacy() requires the following packages: ",
      paste(missing_pkgs, collapse = ", "),
      ". Please install them."
    )
  }

  # fonts
  sysfonts::font_add_google("Quicksand", family = "Quicksand") # sans
  sysfonts::font_add_google("Bitter", family = "Bitter") # serif
  showtext::showtext_auto()

  # colors
  light_gray <- "#D1D3D5"
  ull_red <- "#a00b0b"


  theme <- ggplot2::theme_classic(
    base_size = base_size,
    base_family = "",
    base_line_size = base_line_size,
    base_rect_size = base_rect_size
  )  %+replace%
    ggplot2::theme(
      # background
      panel.background = ggplot2::element_blank(),
      plot.background  = ggplot2::element_blank(),

      # text
      text = ggplot2::element_text(family = base_font,
                                   color = light_text),

      # plot title
      plot.title.position = "plot",
      plot.title = ggtext::element_textbox_simple(
        family = title_font,
        size = base_size * 1.5, # 12*1.5=18
        color = ull_red,
        margin = ggplot2::margin(0, 0, 8, 0)
      ),

      # plot subtitle
      plot.subtitle = ggtext::element_textbox_simple(
        size = base_size * 1.2, # 12*1.2=14.4
        lineheight = 1.2,
        margin = ggplot2::margin(0, 0, 12, 0)
      ),

      # plot caption
      plot.caption.position = "panel",
      plot.caption = ggtext::element_textbox_simple(
        size = base_size * 0.84, # 12*0.84=10.08
        halign = 1,
        margin = ggplot2::margin(12, 0, 0, 0) # t = 6
      ),

      # legend
      legend.position = "top",
      legend.justification = "left",
      legend.title = ggplot2::element_text(
        family = title_font,
        size = base_size,
        color = dark_text
      ),
      legend.text = ggplot2::element_text(size = base_size),
      legend.box.margin = ggplot2::margin(0, 0, 4, 0),

      # axes
      axis.title = ggplot2::element_text(
        family = title_font,
        size = base_size * 0.917, # 12*0.917=11.004
        color = dark_text
      ),
      axis.text = ggplot2::element_text(size = base_size * 0.84), # 12*0.84=10.08
      axis.ticks = ggplot2::element_line(color = light_text),
      axis.line = ggplot2::element_line(color = light_text),

      # facet strips
      strip.background = ggplot2::element_blank(),
      strip.text = ggplot2::element_text(
        family = title_font,
        size = base_size * 1.1, # 12*1.1=13.2
        color = dark_text,
        margin = ggplot2::margin(1, 1, 6, 1)
      )

    )

  # void
  theme_void <- theme + ggplot2::theme(
    axis.text = ggplot2::element_blank(),
    axis.title = ggplot2::element_blank(),
    axis.line =  ggplot2::element_blank(),
    axis.ticks = ggplot2::element_blank()
  )

  # grid lines
  theme_grid_xy <- theme + ggplot2::theme(
    panel.grid.major.x = ggplot2::element_line(color = light_gray),
    panel.grid.major.y = ggplot2::element_line(color = light_gray)
  )

  theme_grid_x <- theme + ggplot2::theme(
    panel.grid.major.x = ggplot2::element_line(color = light_gray)
  )

  theme_grid_y <- theme + ggplot2::theme(
    panel.grid.major.y = ggplot2::element_line(color = light_gray)
  )


  # args
  if(void == TRUE){theme_void} else {
    if(grid_x == TRUE & grid_y == TRUE){theme_grid_xy} else {
      if(grid_x == TRUE & grid_y == FALSE){theme_grid_x} else {
        if(grid_x == FALSE & grid_y == TRUE){theme_grid_y} else {
          theme
        }
      }
    }
  }
}


