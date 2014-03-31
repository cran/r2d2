\name{saithe}
\alias{saithe}
\docType{data}
\title{MCMC Results from Saithe Assessment}
\description{
  Markov chain Monte Carlo results from the analysis of the saithe
  (\emph{Pollachius virens}) fishery in Icelandic waters.
}
\usage{saithe}
\format{
  Data frame containing 1000 rows and 2 columns:
  \tabular{ll}{
    \code{Bio}\tab population biomass in 2013, relative to the expected
    long-term biomass under optimal harvest rate.\cr
    \code{HR}\tab harvest rate in 2013, relative to the optimal harvest
    rate.
  }
}
\references{
  Magnusson, A. (2013) Icelandic saithe. In: \emph{Report of the North
    Western Working Group (NWWG)}. ICES CM 2013/ACOM:07, pp. 231--252.

  Magnusson, A., Punt, A. E., and Hilborn, R. (2013) Measuring
  uncertainty in fisheries stock assessment: the delta method,
  bootstrap, and MCMC. \emph{Fish and Fisheries} \bold{14}, 325--342.
}
\examples{
conf2d(saithe, level=0.9)
freq2d(saithe)
}
\keyword{datasets}
