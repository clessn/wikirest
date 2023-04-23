test_that("create request works", {
  data <- create_req()

  expect_equal(data[["url"]], "https://wikimedia.org/api/rest_v1")
  expect_s3_class(data, "httr2_request")
})
