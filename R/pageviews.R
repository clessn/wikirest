#' Create pageviews request
#'
#' `r lifecycle::badge('experimental')`
#'
#' @noRd
#'
#' @return A modified HTTP request.
create_pageviews_req <- function() {
  create_metrics_req() |>
    httr2::req_url_path_append("/pageviews")
}

#' Get most viewed articles per country
#'
#' `r lifecycle::badge('experimental')`
#'
#' @param country String. ISO 3166-1 alpha-2 code of a country
#' @param access String. One of the following: all-access, desktop, mobile-app,
#' mobile-web.
#' @param year String. Year in YYYY format.
#' @param month String. Month in MM format.
#' @param day String. Day in DD format.
#' @param tidy Logical. TRUE to return a tibble. FALSE to return an httr2_response.
#'
#' @return If tidy = TRUE, a tibble, if false, an httr2_response.
#' @export
#'
#' @examples
#' get_most_viewed_per_country(country = "CA", access = "all-access",
#'   year = "2022", month = "01", day = "01", tidy = TRUE)
get_most_viewed_per_country <- function(country = NULL, access = NULL, year = NULL, month = NULL, day = NULL, tidy = TRUE) {
  articles <- NULL # quiet global variable note

  if (is.null(date) == FALSE) {
    year <- format(date, "%Y")
    month <- format(date, "%m")
    day <- format(date, "%d")
  }

  parameters <- list(country, access, year, month, day, tidy)

  error_if_parameter_null(parameters)

  path <- paste("", country, access, year, month, day, sep = "/")

  resp <- create_pageviews_req() |>
    httr2::req_url_path_append("/top-per-country") |>
    httr2::req_url_path_append(path) |>
    httr2::req_throttle(100/1) |>
    httr2::req_perform()

  if (tidy) {

    json <- httr2::resp_body_json(resp)

    data <- tibble::as_tibble(json[["items"]][[1]]) |>
      dplyr::mutate(articles = purrr::map(articles, tibble::as_tibble)) |>
      tidyr::unnest(articles)

    return(data)
  } else {
    return(resp)
  }
}
