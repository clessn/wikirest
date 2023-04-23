test_that("create metrics request works", {
  data <- create_metrics_req()

  expect_equal(data[["url"]], "https://wikimedia.org/api/rest_v1/metrics")
  expect_s3_class(data, "httr2_request")
  })
