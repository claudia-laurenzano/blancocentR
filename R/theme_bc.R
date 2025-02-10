
# Theme -------------------------------------------------------------------

theme_bc <- function(title_font = "Bitter",
                     base_font = "Quicksand",
                     dark_text = "#1A242F",
                     light_text = "#575E66",
                     void = FALSE,
                     grid_x = FALSE,
                     grid_y = FALSE,
                     base_size = 12,
                     base_line_size = base_size / 22,
                     base_rect_size = base_size / 22) {

  # fonts
  sysfonts::font_add_google("Quicksand", family = "Quicksand") # sans
  sysfonts::font_add_google("Bitter", family = "Bitter") # serif
  showtext::showtext_auto()

  text_sans <- base_font
  text_serif <- title_font

  # colors
  dark_text <- "#1A242F"
  light_text <- "#575E66"
  light_gray <- "#D1D3D5"
  ull_red <- "#a00b0b"


    theme <- ggplot2::theme_classic(
        base_size = base_size,
        base_family = "",
        base_line_size = base_line_size,
        base_rect_size = base_rect_size
    )  %+replace%
        theme(
            # background
            panel.background = element_blank(),
            plot.background  = element_blank(),

            # text
            text = element_text(family = base_font,
                                color = light_text),

            # plot title
            plot.title.position = "plot",
            plot.title = ggtext::element_textbox_simple(
                family = title_font,
                size = base_size * 1.5, # 12*1.5=18
                color = ull_red,
                margin = margin(0, 0, 8, 0)
            ),

            # plot subtitle
            plot.subtitle = ggtext::element_textbox_simple(
                size = base_size * 1.2, # 12*1.2=14.4
                lineheight = 1.2,
                margin = margin(0, 0, 12, 0)
            ),

            # plot caption
            plot.caption.position = "panel",
            plot.caption = ggtext::element_textbox_simple(
                size = base_size * 0.84, # 12*0.84=10.08
                halign = 1,
                margin = margin(12, 0, 0, 0) # t = 6
            ),

            # legend
            legend.position = "top",
            legend.justification = "left",
            legend.title = element_text(
                family = title_font,
                size = base_size,
                color = dark_text
            ),
            legend.text = element_text(size = base_size),
            legend.box.margin = margin(0, 0, 4, 0),

            # axes
            axis.title = element_text(
                family = title_font,
                size = base_size * 0.917, # 12*0.917=11.004
                color = dark_text
            ),
            axis.text = element_text(size = base_size * 0.84), # 12*0.84=10.08
            axis.ticks = element_line(color = light_text),
            axis.line = element_line(color = light_text),

            # facet strips
            strip.background = element_blank(),
            strip.text = element_text(
                family = title_font,
                size = base_size * 1.1, # 12*1.1=13.2
                color = dark_text,
                margin = margin(1, 1, 6, 1)
            )

        )

    # void
    theme_void <- theme + theme(
        axis.text = element_blank(),
        axis.title = element_blank(),
        axis.line =  element_blank(),
        axis.ticks = element_blank()
    )

    # grid lines
    theme_grid_xy <- theme + theme(
        panel.grid.major.x = element_line(color = light_gray),
        panel.grid.major.y = element_line(color = light_gray)
    )

    theme_grid_x <- theme + theme(
        panel.grid.major.x = element_line(color = light_gray)
    )

    theme_grid_y <- theme + theme(
        panel.grid.major.y = element_line(color = light_gray)
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




# Color sim ---------------------------------------------------------------

# show colors in different color deficiency simulations
show_cvd = function(x){
  scales::show_col(c(x,
                     deutan(x),
                     protan(x),
                     tritan(x),
                     desaturate(x)),
                   ncol = length(x))
}
