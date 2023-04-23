#' Create request
#'
#' @keywords internal
#'
#' @return A modified HTTP request.
#' @export
#'
create_req <- function() {
  httr2::request("https://wikimedia.org") |>
    httr2::req_url_path_append("/api/rest_v1")
}

#' Add user agent to request
#'
#' @param req A HTTP request.
#'
#' @keywords internal
#'
#' @return A modified HTTP request.
#' @export
#'
add_user_agent <- function(req) {
  req |>
    httr2::req_user_agent("wikirest (https://github.com/clessn; info@clessn.ca)")
}
