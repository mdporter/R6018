#' Print exact decimal places
#'
#' @param x Vector of numbers.
#' @param k Number of decimal places.
#' @return A character vector of the number rounded to k decimal places.
#' @export
digits <- function(x, k=2) format(round(x, digits=k), nsmall=k)



#' Tidy an [arules::apriori()] object
#'
#' Converts output from [arules::apriori()] to a tibble/dataframe.
#'
#' Use this instead of [arules::inspect()], which only prints to screen.
#'
#' @param x An object of class [arules::rules] or [arules::itemsets] produced
#'        by running [arules::apriori()]
#' @return a tibble (or data.frame) of the rules/itemsets
#' @export
apriori2df <- function(x){
  if(class(x) == "itemsets")   tidy.itemsets(x)
  else if(class(x) == "rules") tidy.rules(x)
  else stop("Only works with class of itemsets or rules")
}



#' @describeIn apriori2df Tidy a [arules::rules] object
#' @export
tidy.rules <- function(x){
  out = data.frame(
    lhs = arules::labels(x@lhs),
    rhs = arules::labels(x@rhs),
    x@quality,
    stringsAsFactors = FALSE)
  if(requireNamespace("tibble", quietly=TRUE)) tibble::as_tibble(out) else out
}

#' @describeIn apriori2df Tidy a [arules::itemsets] object
#' @export
tidy.itemsets <- function(x){
  out = data.frame(items=arules::labels(x), x@quality, stringsAsFactors = FALSE)
  if(requireNamespace("tibble", quietly=TRUE)) tibble::as_tibble(out) else out
}
