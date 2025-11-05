
# Theme -------------------------------------------------------------------

#' A ggplot2 theme for Blanco Center LA FIRST visualizations
#'
#' `theme_lafirst()` adds the LA FIRST theme to any plot created using `ggplot()`.
#' Customize plot elements like font family and color and axis colors and line sizes.
#' Grid lines for x and y axes can be added, or all axes can be removed, e.g. for maps.
#'
#' @param title_font Font used for titles: plot title, axis titles, legend title.
#' @param base_font Font used for all other text.
#' @param dark_text Color used for axis and legend titles.
#' @param light_text Color used for everything else, except plot title.
#' @param void TRUE or FALSE: if TRUE, removes all axis elements. Suggested for maps.
#' @param grid_x TRUE or FALSE: if TRUE, adds x grid lines.
#' @param grid_y TRUE or FALSE: if TRUE, adds y grid lines.
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
#' theme_lafirst(title_font = "Univers", base_font = "Univers", void = TRUE)
#' }
theme_lafirst = function(title_font = "Univers",
                         base_font = "Univers",
                         dark_text = "#1A242F",
                         light_text = "#575E66",
                         void = FALSE,
                         grid_x = FALSE,
                         grid_y = FALSE,
                         base_size = 8,
                         base_line_size = base_size / 40,
                         base_rect_size = base_size / 40) {

  required_pkgs <- c("ggplot2", "ggtext")
  missing_pkgs <- required_pkgs[!vapply(required_pkgs, requireNamespace, logical(1), quietly = TRUE)]

  if (length(missing_pkgs)) {
    stop(
      "theme_lafirst() requires the following packages: ",
      paste(missing_pkgs, collapse = ", "),
      ". Please install them."
    )
  }

  light_gray <- "#D1D3D5"
  lafirst_blue2 <- "#293b69"

  theme <- ggplot2::theme_classic(
    base_size = base_size,
    base_family = "",
    base_line_size = base_line_size,
    base_rect_size = base_rect_size
  )  %+replace%
    theme(
      # text
      text = ggplot2::element_text(family = base_font,
                          color = light_text),

      # plot title
      plot.title.position = "plot",
      plot.title = ggtext::element_textbox_simple(
        family = title_font,
        size = base_size * 1.5, # 8 * 1.5 = 12
        color = lafirst_blue2,
        margin = ggplot2::margin(t = 4, r = 0, b = 4, l = 0),
        lineheight = 1.3
      ),

      # plot subtitle
      plot.subtitle = ggtext::element_textbox_simple(
        size = base_size * 1.2, # 8 * 1.2 = 9.6
        lineheight = 1.3,
        margin = ggplot2::margin(t = 2, r = 0, b = 4, l = 0)
      ),

      # plot caption
      plot.caption.position = "plot",
      plot.caption = ggtext::element_textbox_simple(
        size = base_size * 0.84, # 8 * 0.84 = 6.72
        hjust = 0,
        margin = ggplot2::margin(12, 0, 0, 0)
      ),

      # legend
      legend.position = "top",
      legend.justification = "left",
      legend.title = ggplot2::element_text(
        family = title_font,
        size = base_size,
        color = dark_text
      ),
      legend.text = ggplot2::element_text(
        size = base_size, lineheight = 0.2,
        margin = ggplot2::margin(l = 3, r = 5)),
      legend.box.margin = ggplot2::margin(t = 1, r = 0, b = -2, l = 0),
      legend.key.size = ggplot2::unit(base_size * 0.018, "in"), # 8 * 0.018 = 0.14
      legend.location = "plot", # includes y-axis labels in alignment, not just plot area

      # axes
      axis.title = ggplot2::element_text(
        family = title_font,
        size = base_size * 0.917, # 8 * 0.917 = 7.34
        color = dark_text
      ),
      axis.text = ggplot2::element_text(
        size = base_size * 0.84, # 8 * 0.84 = 6.72
        lineheight = 1),
      axis.ticks = ggplot2::element_line(color = light_gray),
      axis.line = ggplot2::element_line(color = light_gray),

      # facet strips
      strip.background = ggplot2::element_blank(),
      strip.text = ggplot2::element_text(
        family = title_font,
        size = base_size * 0.85, # 8 * 0.85 = 6.8
        color = dark_text,
        margin = ggplot2::margin(1, 1, 6, 1)
      ),

      # facet spacing
      panel.spacing = ggplot2::unit(0.2, "in")

    )

  # void
  theme_void <- theme + theme(
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
