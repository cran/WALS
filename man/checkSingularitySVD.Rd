% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tools.R
\name{checkSingularitySVD}
\alias{checkSingularitySVD}
\title{Internal function: Check singularity of SVDed matrix}
\usage{
checkSingularitySVD(singularValues, tol, rtol, digits = 5)
}
\arguments{
\item{singularValues}{Vector of singular values.}

\item{tol}{Absolute tolerance, singular if \code{min(singularValues) < tol}}

\item{rtol}{Relative tolerance, singular if
\code{min(singularValues) / max(singularValues) < rtol}}

\item{digits}{The number significant digits to show in case a
warning is triggered by singularity.}
}
\description{
Checks whether matrix is singular based on singular values of SVD.
}
