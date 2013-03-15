\name{plotVenn2d}
\alias{plotVenn2d}
\title{Plot Venn diagram for 2-dimensional data.}
\description{Given a vector of 3 values, which describe 2-dimensional data, it plots a Venn diagram, i.e. 'crossing circles'. The user can specify values, labels for each circle-group and colors.
}
\usage{
plotVenn2d(x, labels = c('A', 'B'), Colors = c("red", "yellow", "green"), 
  Title = NULL, shrink = 1, rot=0, radius=c(1,1))
}
\arguments{
  \item{x}{ a numeric vector of length 3, where first value corresponds to only group 1, second is only group 2, and third is a crossover of the two groups. }
  \item{labels}{ a character vector of length 2, providing names for the 2 groups/dimensions. }
  \item{shrink}{ a numeric value, specifying zooming effect of the plot, defaults to 1. }
  \item{Colors}{ a vector of color names for the backgrounds of each part of the diagram. }
  \item{Title}{ optional: a character vector of length 1, specifying title for the whole plot. }
  \item{rot}{ a numeric value, specifying the number of degrees to rotate the graph. }
  \item{radius}{ a 2-item numeric vector containing the relative sizes of the two circles }
}
\details{
NOTICE: This only works for 2-dimensional data.

By definition, value '00' lays outside the plotted diagram. Therefore, it will not be plotted. Because of that, if plotting 'percent' data, all values will not add up to 100 percent, missing 000's allocation.
}
\author{Elliot Noma, Aliona Manvae
}
\note{ It requires package grid to be installed, and can be plotted according to specified grid parameters.}
\examples{
  y <- c(37,29,6)
  labels <- c("A","B")
  plot.new()
  plotVenn2d(y, labels, Colors=rainbow(3), Title = "This is an example of a 2D Venn plot",
    radius=c(0.85, 1.0), rot=45)
}
\keyword{ hplot }
