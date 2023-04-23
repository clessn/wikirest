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

#' Get most viewed articles per country
#'
#' @param country String. ISO 3166-1 alpha-2 code of a country
#' @param access String. One of the following: all-access, desktop, mobile-app,
#' mobile-web.
#' @param year String. Year in YYYY format.
#' @param month String. Month in MM format.
#' @param day String. Day in DD format.
#'
#' @return A modified HTTP request.
#' @export
get_most_viewed_per_country <- function(country = "CA", access = "all-access", year = "2022", month = "01", day = "01") {

  path <- paste("", country, access, year, month, day, sep = "/")

  wikirest::create_pageviews_req() |>
    httr2::req_url_path_append("/top-per-country") |>
    httr2::req_url_path_append(path) |>
    httr2::req_throttle(100/1) |>
    httr2::req_perform()
}
