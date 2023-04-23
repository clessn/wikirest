test_that("create pageviews request works", {
  data <- create_pageviews_req()

  expect_equal(data[["url"]], "https://wikimedia.org/api/rest_v1/metrics/pageviews")
  expect_s3_class(data, "httr2_request")
})
