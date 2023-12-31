% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/walsGLM.R
\name{controlGLM}
\alias{controlGLM}
\title{Control function for initial GLM fit}
\usage{
controlGLM(restricted = FALSE, controlGLMfit = list())
}
\arguments{
\item{restricted}{If \code{TRUE}, then initial fit in \code{\link[stats]{glm.fit}}
only considers the focus regressors. By default \code{FALSE}, then the unrestricted
model is estimated in \code{\link[stats]{glm.fit}} (i.e. all regressors).}

\item{controlGLMfit}{List. Arguments to be passed to \code{control} argument
of \code{\link[stats]{glm.fit}}. See also \code{\link[stats]{glm.control}}.}
}
\value{
Returns a list containing the parameters specified in the arguments
to be used in \code{\link[WALS]{walsGLM}} (and \code{\link[WALS]{walsGLMfitIterate}}).
}
\description{
Defines controllable parameters of initial GLM fit in \code{\link[WALS]{walsGLM}}.
}
\examples{
data("HMDA", package = "AER")
fitBinomial <- walsGLM(deny ~ pirat + hirat + lvrat + chist + mhist + phist |
                       selfemp + afam, data = HMDA,
                       family = binomialWALS(),
                       prior = weibull(),
                       controlInitGLM = controlGLM(restricted = TRUE,
                                                   controlGLMfit = list(trace = TRUE)))

}
\seealso{
\link{walsGLM}, \link{walsGLMfitIterate}, \link{glm.fit}, \link{glm.control}.
}
