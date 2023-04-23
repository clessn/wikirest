#' Throw an error if parameter is null
#'
#' @param parameters List of parameters.
#'
#' @return Error message if parameters missing.
#' @export
error_parameter_is_null <- function(parameters = NULL) {
  if (list(NULL) %in% list(parameters)) {
    stop("One or more parameters are NULL.")
  }
}
