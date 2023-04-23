#' Create pageviews request
#'
#' @keywords internal
#'
#' @return A modified HTTP request.
#' @export
#'
create_pageviews_req <- function() {
  create_metrics_req() |>
    httr2::req_url_path_append("/pageviews")
}
