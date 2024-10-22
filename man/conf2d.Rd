\name{conf2d}
\alias{conf2d}
\alias{conf2d.default}
\alias{conf2d.formula}
\alias{conf2d_int}
\title{Bivariate (Two-Dimensional) Confidence Region}
\description{
  Calculate an empirical confidence region for two variables, and
  optionally overlay the smooth polygon on a scatterplot.
}
\usage{
conf2d(x, \dots)

\method{conf2d}{formula}(formula, data, subset, \dots)

\method{conf2d}{default}(x, y, level=0.95, n=200, method="wand", shape=1, smooth=50,
       plot=TRUE, add=FALSE, xlab=NULL, ylab=NULL, col.points="gray",
       col="black", lwd=2, \dots)

conf2d_int(x, y, surf, level, n)  # internal function
}
\arguments{
  \item{x}{a vector of x values, or a data frame whose first two columns
    contain the x and y values.}
  \item{y}{a vector of y values.}
  \item{formula}{a \code{\link{formula}}, such as \code{y~x}.}
  \item{data}{a \code{data.frame}, \code{matrix}, or \code{list} from
    which the variables in \code{formula} should be taken.}
  \item{subset}{an optional vector specifying a subset of observations
    to be used.}
  \item{level}{the proportion of points that should be inside the
    region.}
  \item{n}{the number of regions to evaluate, before choosing the region
    that matches \code{level} best.}
  \item{method}{kernel smoothing function to use: \code{"wand"} or
    \code{"mass"}.}
  \item{shape}{a bandwidth scaling factor, affecting the polygon shape.}
  \item{smooth}{the number of bins (scalar or vector of length 2),
    affecting the polygon smoothness.}
  \item{plot}{whether to plot a scatterplot and overlay the region as a
    polygon.}
  \item{add}{whether to add a polygon to an existing plot.}
  \item{xlab}{a label for the x axis.}
  \item{ylab}{a label for the y axis.}
  \item{col.points}{color of points.}
  \item{col}{color of polygon.}
  \item{lwd}{line width of polygon.}
  \item{\dots}{further arguments passed to \code{plot} and
    \code{polygon}.}
  \item{surf}{a list whose first three elements are x coordinates, y
    coordinates, and a surface matrix.}
}
\details{
  This function constructs a large number (\code{n}) of smooth polygons,
  and then chooses the polygon that comes closest to containing a given
  proportion (\code{level}) of the total points.

  The default \code{method="wand"} calls the
  \code{\link[KernSmooth]{bkde2D}} kernel smoother from the
  \pkg{KernSmooth} package, while \code{method="mass"} calls
  \code{\link[MASS]{kde2d}} from the \pkg{MASS} package.

  The \code{conf2d} function calls \code{bkde2D} or \code{kde2d} to
  compute a smooth surface from \code{x} and \code{y}. If users already
  have a smoothed surface to work from, the internal \code{conf2d_int}
  can be used directly to find the empirical confidence region that
  matches \code{level} best.
}
\value{
  List containing five elements:
  \item{x}{x coordinates defining the region.}
  \item{y}{y coordinates defining the region.}
  \item{inside}{logical vector indicating which of the original data
    coordinates are inside the region.}
  \item{area}{area inside the region.}
  \item{prop}{actual proportion of points inside the region.}
}
\note{
  The \code{area} of a bivariate region is analogous to the range of a
  univariate interval. This allows a quantitative comparison of
  different confidence regions.

  Ellipses are a more restrictive approach to calculate an empirical
  bivariate confidence region. Smooth polygons make fewer assumptions
  about how x and y covary.

  The \code{conf2d} and \code{freq2d} functions are closely related. The
  advantage of \code{conf2d} is that it returns a region as a smooth
  polygon. The advantage of \code{freq2d} is that it returns a set that
  is guaranteed to contain the correct proportion of points, even for
  spatially complex datasets.
}
\author{
  Arni Magnusson and Julian Burgos, based on an earlier function by
  Gregory R. Warnes.
}
\seealso{
  \code{\link{quantile}} is the corresponding univariate equivalent.

  The \pkg{distfree.cr} package uses a different smoothing algorithm to
  calculate bivariate empirical confidence regions.

  \code{ci2d} in the \pkg{gplots} package is a predecessor of
  \code{conf2d}.

  \code{\link{freq2d}} calculates a discrete frequency distribution for
  two continuous variables.

  \code{\link{r2d2-package}} gives an overview of the package.
}
\examples{
conf2d(Ushape)$prop
conf2d(saithe, pch=16, cex=1.2, col.points=rgb(0,0,0,0.1), lwd=3)

# First surface, then region
plot(saithe, col="gray")
surf <- MASS::kde2d(saithe$Bio, saithe$HR, h=0.25, n=100)
region <- conf2d_int(saithe$Bio, saithe$HR, surf, level=0.95, n=200)
polygon(region, lwd=2)
}
% Graphics
\keyword{dplot}
% Statistics
\keyword{distribution}
\keyword{multivariate}
\keyword{smooth}
