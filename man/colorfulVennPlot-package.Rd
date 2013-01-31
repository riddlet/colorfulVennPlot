\name{colorfulVennPlot-package}
\alias{colorfulVennPlot-package}
\alias{colorfulVennPlot}
\docType{package}
\title{ Venn diagram of 3-dimensional data }
\description{ Plot Venn diagram of 3-dimensional data & add custom colors to it }
\details{
\tabular{ll}{
Package: \tab plotVenn\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-01-31\cr
License: \tab GPL-2\cr
}
The package is designed to be able to plot a vector of length 7 in shape of a Venn diagram using plotVenn(). Colors for each region can be specified.

If data needs to be shaped into appropriate format for it, createVennData() can be used. Given 3 columns of data and values by which to split the data, createVennData() splits it into 7 groups and counts values in each group or percent allocations.
}
\author{
Elliot Noma, Aliona Manvae

Maintainer: Elliot Noma <Noma@GarrettAssetManagement.com>
}
\keyword{ package }
\examples{
  data(survey, package = "MASS")
  # For more info: ?MASS::survey
  
  # Grouping students by Pulse, Height and Age
  vennData <- createVennData(survey,
    Cols = c("Pulse","Height","Age"),
    Splits = c(75, 170, 20),   ## Split Pulse at 75, split Height at 170, split Age at 20
    Labels = NULL,   ## Keep Labels NULL, as we wish to stick with Pulse, Height and Age titles.
    type = c("percent"))   ## generate data as percents

  # Plot Venn diagram
  plotVenn(vennData$x, vennData$labels)

}
