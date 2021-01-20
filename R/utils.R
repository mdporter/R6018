#' Print exact decimal places
#'
#' @param x Vector of numbers.
#' @param k Number of decimal places.
#' @return A character vector of the number rounded to k decimal places.
#' @export
digits <- function(x, k=2) format(round(x, digits=k), nsmall=k)
