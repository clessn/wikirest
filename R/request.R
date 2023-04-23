#' Create request
#'
#' @param ... further arguments to httr's GET.
#'
#' @return A modified HTTP request.
#' @export
#'
request <- function(...) {
  httr2::request("https://en.wikipedia.org") %>%
    httr2::req_url_path_append("/api/rest_v1")
}
