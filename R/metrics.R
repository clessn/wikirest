#' Create metrics request
#'
#' `r lifecycle::badge('experimental')`
#'
#' @noRd
#'
#' @return A modified HTTP request.
create_metrics_req <- function() {
  create_req() |>
    httr2::req_url_path_append("/metrics")
}
