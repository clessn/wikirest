#' Create request
#'
#' @keywords internal
#'
#' @return A modified HTTP request.
#' @export
#'
create_req <- function() {
  httr2::request("https://en.wikipedia.org") |>
    httr2::req_url_path_append("/api/rest_v1")
}
