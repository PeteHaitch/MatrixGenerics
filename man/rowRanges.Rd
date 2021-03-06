% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rowRanges.R
\name{rowRanges}
\alias{rowRanges}
\alias{rowRanges,matrix-method}
\alias{rowRanges,numeric-method}
\alias{rowRanges,array-method}
\alias{colRanges}
\alias{colRanges,matrix-method}
\alias{colRanges,numeric-method}
\alias{colRanges,array-method}
\title{Calculates the minimum and maximum for each row (column) of a matrix-like object}
\usage{
rowRanges(x, rows = NULL, cols = NULL, na.rm = FALSE, ...)

\S4method{rowRanges}{matrix}(x, rows = NULL, cols = NULL, na.rm = FALSE, dim. = dim(x))

\S4method{rowRanges}{numeric}(x, rows = NULL, cols = NULL, na.rm = FALSE, dim. = dim(x))

\S4method{rowRanges}{array}(x, rows = NULL, cols = NULL, na.rm = FALSE, dim. = dim(x))

colRanges(x, rows = NULL, cols = NULL, na.rm = FALSE, ...)

\S4method{colRanges}{matrix}(x, rows = NULL, cols = NULL, na.rm = FALSE, dim. = dim(x))

\S4method{colRanges}{numeric}(x, rows = NULL, cols = NULL, na.rm = FALSE, dim. = dim(x))

\S4method{colRanges}{array}(x, rows = NULL, cols = NULL, na.rm = FALSE, dim. = dim(x))
}
\arguments{
\item{x}{An NxK matrix-like object.}

\item{rows, cols}{A \code{\link[base]{vector}} indicating the subset (and/or
columns) to operate over. If \code{\link[base]{NULL}}, no subsetting is done.}

\item{na.rm}{If \code{\link[base:logical]{TRUE}}, \code{\link[base]{NA}}s
are excluded first, otherwise not.}

\item{...}{Additional arguments passed to specific methods.}

\item{dim.}{An \code{\link[base]{integer}} \code{\link[base]{vector}} of
length two specifying the dimension of \code{x}, essential when x is a
\code{\link[base]{numeric}} vector.
Note, that this is not a generic argument and not all implementation of this function
have to provide it.}
}
\value{
a \code{\link[base]{numeric}} \code{Nx2} (\code{Kx2}) \code{\link{matrix}}, where
N (K) is the number of rows (columns) for which the ranges are calculated.
}
\description{
Calculates the minimum and maximum for each row (column) of a matrix-like object.
}
\details{
The S4 methods for \code{x} of type \code{\link[base]{matrix}} or
\code{\link[base]{numeric}} call \code{matrixStats::\link[matrixStats]{rowRanges}}
/ \code{matrixStats::\link[matrixStats]{colRanges}}.
}
\examples{
  mat <- matrix(rnorm(15), nrow = 5, ncol = 3)
  mat[2, 1] <- NA
  mat[3, 3] <- Inf
  mat[4, 1] <- 0
  
  print(mat)
  
  rowRanges(mat)
  colRanges(mat)
  
}
\seealso{
\itemize{
\item \code{matrixStats::\link[matrixStats]{rowRanges}()} and
\code{matrixStats::\link[matrixStats]{colRanges}()} which are used when
the input is a \code{matrix} or \code{numeric} vector.
\item For max estimates, see \code{\link{rowMaxs}()}.
\item For min estimates, see \code{\link{rowMins}()}.
\item \link{range}
}
}
\keyword{array}
\keyword{iteration}
\keyword{robust}
