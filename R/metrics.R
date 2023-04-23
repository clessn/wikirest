#' Create metrics request
#'
#' @param ... further arguments to httr's GET.
#'
#' @keywords internal
#'
#' @return A modified HTTP request.
#' @export
#'
get_metrics <- function(...) {
  request() |>
    httr2::req_url_path_append("/metrics")
}
