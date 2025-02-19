% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/palettes.R
\name{de_pal}
\alias{de_pal}
\title{Color palette for Digital Equity regions}
\usage{
de_pal(region = "name", darken = 0)
}
\arguments{
\item{region}{System used to identify regions: 'number' or 'name'.}

\item{darken}{Factor by which the shade for region 8 - 8 - North Delta gets darkened. Default = 0.}
}
\value{
A character object of length 8.
}
\description{
Colors are defined by region number or region name. The shade for region
8 - North Delta can be darkened for small area geoms (e.g., geom_point()).
}
\examples{
\dontrun{
de_pal()
de_pal(region = "number", darken = 1)
}
}
