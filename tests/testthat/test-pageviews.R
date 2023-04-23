test_that("create pageviews request works", {
  data <- create_pageviews_req()

  expect_equal(data[["url"]], "https://wikimedia.org/api/rest_v1/metrics/pageviews")
  expect_s3_class(data, "httr2_request")
})

test_that("create pageviews request works", {
  data <- get_most_viewed_per_country(country = "CA", access = "all-access",
                                      year = "2022", month = "01", day = "01",
                                      tidy = FALSE)

  expect_s3_class(data, "httr2_response")

  data <- get_most_viewed_per_country(country = "CA", access = "all-access",
                                      year = "2022", month = "01", day = "01",
                                      tidy = TRUE)

  expect_s3_class(data, "tbl_df")

})
