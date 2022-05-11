\name{r2d2-package}
\alias{r2d2-package}
\alias{r2d2}
\docType{package}
\title{
  Bivariate (Two-Dimensional) Confidence Region and Frequency
  Distribution
}
\description{
  This package provides generic functions to analyze the distribution
  of two continuous variables.
}
\details{
  \emph{Bivariate calculations:}
  \tabular{ll}{
    \code{\link{conf2d}} \tab empirical confidence region, a smooth
    polygon\cr
    \code{\link{freq2d}} \tab frequency distribution, a table
  }
  \emph{Examples:}
  \tabular{ll}{
    \code{\link{saithe}} \tab MCMC results in two columns\cr
    \code{\link{Ushape}} \tab U-shaped cloud in two columns
  }
}
\author{
  Arni Magnusson and Julian Burgos, based on earlier functions by
  Gregory R. Warnes.
}
\references{
  Bivand, R. S., Pebesma, E., and Gomez-Rubio, V. (2013).
  \emph{Applied Spatial Data Analysis with R}. Second edition.
  New York: Springer.

  Venables, W. N. and Ripley, B. D. (2002).
  \emph{Modern Applied Statistics with S}. Fourth edition.
  New York: Springer.

  Wand, M. P. and Jones, M. C. (1995).
  \emph{Kernel Smoothing}.
  London: Chapman and Hall.
}
\seealso{
  Combines existing tools from the \pkg{KernSmooth}, \pkg{MASS}, and
  \pkg{sp} packages.
}
% Graphics
\keyword{dplot}
% Basics
\keyword{manip}
% Statistics
\keyword{distribution}
\keyword{multivariate}
\keyword{smooth}
