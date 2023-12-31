% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme.R
\name{theme_poma}
\alias{theme_poma}
\title{A ggplot theme which allow custom yet consistent styling of plots in the
POMA package and web app.}
\usage{
theme_poma(
  base_size = 15,
  axistitle = "xy",
  axistext = "xy",
  legend_position = "bottom",
  legend_title = TRUE,
  axis_x_rotate = FALSE,
  margin = 2,
  ...
)
}
\arguments{
\item{base_size}{(integer) Base point size}

\item{axistitle}{(string) Axis titles. Options include "none" or
any combination of "X", "Y", "x" and "y".}

\item{axistext}{(string) Axis text labels for values or groups.
Options include "none" or any combination of "X", "Y", "x" and "y".}

\item{margin}{(numeric) Should a margin of x be added to the plot?
Defaults to 0 (no margin by default).}

\item{...}{Other arguments passed to ggplot methods.}
}
\description{
A ggplot theme which allow custom yet consistent styling of plots in the
POMA package and web app.
}
\examples{
\dontrun{
library(ggplot2)
ggplot(diamonds, aes(cut)) + geom_bar() + theme_poma()
}

}
