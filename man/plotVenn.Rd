\name{plotVenn}
\alias{plotVenn}
\title{Plot Venn diagram for 3-dimensional data.}
\description{Given a vector of 7 values, which describe 3-dimensional data, it plots up Venn diagram, i.e. 'crossing circles'. The user is able to specify values, labels for each circle-group and colors.
}
\usage{
plotVenn(x, labels, shrink = 1, Colors = c("red", "yellow", "orange", "lightblue", "purple", "green", "grey"))
}
\arguments{
  \item{x}{ a numeric vector of length 7, with names c("001","010","011","100","101","110","111") in suitable order.}
  \item{labels}{ a character vector of length 3, providing names for the 3 dimensions. }
  \item{shrink}{ a numeric value, specifying zooming effect of the plot. }
  \item{Colors}{ a vector of color names for the backgrounds of each part of the diagram. }
}
\details{
NOTICE: This only works for 3-dimensional data.

By definition, value '000' lays outside the plotted diagram. Therefore, it will not be plotted. Because of that, if plotting 'percent' data, all values will not add up to 100 percent, missing 000's allocation.
}
\references{
  Original code: http://elliotnoma.wordpress.com/2011/02/09/venn-diagram/

  Output file: http://elliotnoma.files.wordpress.com/2011/02/venndiagram.png
}
\author{ Elliot Noma, Garrett Asset Management

 Noma@GarrettAssetManagement.com
}
\note{ It requires package grid to be installed, and can be plotted according to specified grid parameters.}
\examples{
  y <- c(37,29,6,232,121,77,25)
  names(y) <- c("001","010","011","100","101","110","111")
  labels <- c("A","B","C")
  plotVenn(y, labels, Colors=rainbow(7))
}
\keyword{ hplot }
