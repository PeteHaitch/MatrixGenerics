#' Calculates the weighted mean for each row (column) of a matrix-like object
#'
#' Calculates the weighted  mean for each row (column) of a matrix-like object.
#'
#' 
#' @templateVar rowName rowWeightedMeans
#' @templateVar colName colWeightedMeans
#' 
#' @template matrixStatsLink
#' 
#' @template standardParameters
#' @template weightParam
#' @template na_rmParameter
#' 
#'
#' @template returnVector
#'
#' @seealso
#' \itemize{
#' \item \code{matrixStats::\link[matrixStats]{rowWeightedMeans}()} and
#'   \code{matrixStats::\link[matrixStats]{colWeightedMeans}()} which are used when
#'   the input is a \code{matrix} or \code{numeric} vector.
#' \item See also [rowMeans2] for the corresponding unweighted function.
#' }
#' 
#' @template weightedExamples
#'   
#' 
#' @keywords array iteration robust univar
#'
#' @name rowWeightedMeans
#' @export
setGeneric("rowWeightedMeans", function(x, w = NULL, rows = NULL, cols = NULL, na.rm=FALSE, ...) standardGeneric("rowWeightedMeans"),
           signature = "x"
)

.default_rowWeightedMeans <- function(x, w = NULL, rows = NULL, cols = NULL, na.rm=FALSE){
  matrixStats::rowWeightedMeans(x, w = w, rows = rows, cols = cols, na.rm=na.rm)
}

#' @rdname rowWeightedMeans
setMethod("rowWeightedMeans", signature = "matrix", .default_rowWeightedMeans)

#' @rdname rowWeightedMeans
setMethod("rowWeightedMeans", signature = "numeric", .default_rowWeightedMeans)

#' @rdname rowWeightedMeans
setMethod("rowWeightedMeans", signature = "array", .default_rowWeightedMeans)




#' @rdname rowWeightedMeans
#' @name colWeightedMeans
#' @export
setGeneric("colWeightedMeans", function(x, w = NULL, rows = NULL, cols = NULL, na.rm=FALSE, ...) standardGeneric("colWeightedMeans"),
           signature = "x"
)

.default_colWeightedMeans <- function(x, w = NULL, rows = NULL, cols = NULL, na.rm=FALSE){
  matrixStats::colWeightedMeans(x, w = w, rows = rows, cols = cols, na.rm=na.rm)
}

#' @rdname rowWeightedMeans
setMethod("colWeightedMeans", signature = "matrix", .default_colWeightedMeans)

#' @rdname rowWeightedMeans
setMethod("colWeightedMeans", signature = "numeric", .default_colWeightedMeans)

#' @rdname rowWeightedMeans
setMethod("colWeightedMeans", signature = "array", .default_colWeightedMeans)



