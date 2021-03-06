% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/checkPackages.R
\name{checkPackages}
\alias{checkPackages}
\title{Check if you have packages installed}
\usage{
checkPackages(packages)
}
\arguments{
\item{packages}{a vector with the packages to check or install, depending on the case.}
}
\description{
Check if you have packages installed and install it if there is missing.
The actions are shown by console.
}
\examples{
\dontrun{
checkPackages("twitteR")
checkPackages(c("tidyr","ggplot2"))
}
}
\keyword{UPAO}
