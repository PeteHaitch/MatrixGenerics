% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rowOrderStats.R
\name{rowOrderStats}
\alias{rowOrderStats}
\alias{rowOrderStats,matrix-method}
\alias{rowOrderStats,numeric-method}
\alias{rowOrderStats,array-method}
\alias{colOrderStats}
\alias{colOrderStats,matrix-method}
\alias{colOrderStats,numeric-method}
\alias{colOrderStats,array-method}
\title{Calculates an order statistic for each row (column) of a matrix-like object}
\usage{
rowOrderStats(x, rows = NULL, cols = NULL, which, ...)

\S4method{rowOrderStats}{matrix}(x, rows = NULL, cols = NULL, which, dim. = dim(x))

\S4method{rowOrderStats}{numeric}(x, rows = NULL, cols = NULL, which, dim. = dim(x))

\S4method{rowOrderStats}{array}(x, rows = NULL, cols = NULL, which, dim. = dim(x))

colOrderStats(x, rows = NULL, cols = NULL, which, ...)

\S4method{colOrderStats}{matrix}(x, rows = NULL, cols = NULL, which, dim. = dim(x))

\S4method{colOrderStats}{numeric}(x, rows = NULL, cols = NULL, which, dim. = dim(x))

\S4method{colOrderStats}{array}(x, rows = NULL, cols = NULL, which, dim. = dim(x))
}
\arguments{
\item{x}{An NxK matrix-like object.}

\item{rows, cols}{A \code{\link[base]{vector}} indicating the subset (and/or
columns) to operate over. If \code{\link[base]{NULL}}, no subsetting is done.}

\item{which}{An integer index in [1,K] ([1,N]) indicating which order statistic to be returned}

\item{...}{Additional arguments passed to specific methods.}

\item{dim.}{An \code{\link[base]{integer}} \code{\link[base]{vector}} of
length two specifying the dimension of \code{x}, essential when x is a
\code{\link[base]{numeric}} vector.
Note, that this is not a generic argument and not all implementation of this function
have to provide it.}
}
\value{
Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of
length N (K).
}
\description{
Calculates an order statistic for each row (column) of a matrix-like object
}
\details{
The S4 methods for \code{x} of type \code{\link[base]{matrix}} or
\code{\link[base]{numeric}} call \code{matrixStats::\link[matrixStats]{rowOrderStats}}
/ \code{matrixStats::\link[matrixStats]{colOrderStats}}.
}
\examples{
    mat <- matrix(rnorm(15), nrow = 5, ncol = 3)
    mat[2, 1] <- 2
    mat[3, 3] <- Inf
    mat[4, 1] <- 0
    
    print(mat)
    
    rowOrderStats(mat, which = 1)
    colOrderStats(mat, which = 3)

}
\seealso{
\itemize{
\item \code{matrixStats::\link[matrixStats]{rowOrderStats}()} and
\code{matrixStats::\link[matrixStats]{colOrderStats}()} which are used when
the input is a \code{matrix} or \code{numeric} vector.
}
}
\keyword{array}
\keyword{iteration}
\keyword{robust}
\keyword{univar}
