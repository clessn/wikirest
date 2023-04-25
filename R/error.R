#' Throw an error if parameter is null
#'
#' `r lifecycle::badge('experimental')`
#'
#' @param parameters List or vector of parameters.
#'
#' @keywords internal
#'
#' @return Error message if parameters missing.
error_if_parameter_null <- function(parameters = NULL) {
  if (any(sapply(parameters, is.null))) {
    stop("One or more parameters are NULL.")
  }
}
