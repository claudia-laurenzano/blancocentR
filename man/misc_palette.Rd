% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/palettes.R
\name{misc_palette}
\alias{misc_palette}
\title{Color palette for miscellaneous uses}
\usage{
misc_palette(n = 21)
}
\arguments{
\item{n}{Number of colors generated. Default = 21.}
}
\value{
A character of length 21, a list of length 21.
}
\description{
Create a color palette with 21 colors. Please note that the shade 'vintageviolet'
("#77839b") is used in some regional color palettes (e.g., DCFS, LDH).
}
\examples{
\dontrun{
misc_palette()
misc_palette(get_list = TRUE)
}
}
