
# Theme -------------------------------------------------------------------

#' A gt theme for Blanco Center tables
#'
#' `gt_theme_bc()` adds the Blanco Center theme to any table created using `gt()`.
#' Customize table elements like font family, or text color and sizes.
#'
#' @param gt An existing gt table object of class `gt_tbl`
#' @param base_family Font used for most text.
#' @param header_family Font used for titles: table title, column headers, spanner column headers, row group labels.
#' @param title_color Color used for table title.
#' @param text_color Color used for everything else, except table title.
#' @param base_size Base text size in pts (converted to px within function).
#' @param ... Additional arguments passed to gt::tab_options().
#'
#' @return A gt theme.
#' @export
#'
#' @examples
#' \dontrun{
#' gt_theme_bc(header_family = "Bitter", base_family = "Quicksand")
#' }

gt_theme_bc <- function(gt,
                        base_family = "Quicksand",
                        header_family = "Bitter",
                        text_color = "#575E66",
                        title_color = "#a00b0b",
                        base_size = 12, ...) {

  required_pkgs <- c("gt")
  missing_pkgs <- required_pkgs[!vapply(required_pkgs, requireNamespace, logical(1), quietly = TRUE)]

  if (length(missing_pkgs)) {
    stop(
      "gt_theme_bc() requires the following packages: ",
      paste(missing_pkgs, collapse = ", "),
      ". Please install them."
    )
  }

  base_size_fct <- base_size * 4 / 3

  gt %>%
    # styling
    gt::opt_table_font(font = base_family, color = text_color) %>%
    gt::tab_style(
      style = gt::cell_text(
        color = title_color,
        font = header_family
      ),
      locations = gt::cells_title(groups = "title")
    ) %>%
    gt::tab_style(
      style = gt::cell_text(
        font = header_family,
        weight = "bold",
        color = text_color
      ),
      locations = gt::cells_stubhead()
    ) %>%
    gt::tab_style(
      style = gt::cell_text(
        color = text_color,
        font = header_family,
        style = "italic"
      ),
      locations = gt::cells_column_spanners()
    ) %>%
    gt::tab_style(
      style = gt::cell_text(
        font = header_family,
        weight = "bold",
        color = text_color
      ),
      locations = gt::cells_column_labels()
    ) %>%
    gt::tab_style(
      style = gt::cell_text(
        color = text_color,
        font = header_family,
        style = "italic"
      ),
      locations = gt::cells_row_groups()
    ) %>%
    gt::tab_options(
      data_row.padding = gt::px(0.38 * base_size_fct),
      heading.align = "left",
      heading.title.font.size = gt::px(1.5 * base_size_fct),
      heading.subtitle.font.size = gt::px(1.2 * base_size_fct),
      table_body.hlines.color = "#D1D3D5",
      table.font.size = gt::px(base_size_fct),
      table.border.top.style = "none",
      table.border.bottom.style = "none",
      ...
    )
}
