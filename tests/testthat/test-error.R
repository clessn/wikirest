test_that("error if parameter null works", {
  expect_error(error_if_parameter_null(parameters = list(NULL)))
  expect_error(error_if_parameter_null(parameters = list("a", NULL, 2)))
  expect_no_error(error_if_parameter_null(parameters = list("a", 2, TRUE, FALSE)))
  expect_no_error(error_if_parameter_null(parameters = list(NA, NaN)))
  expect_no_error(error_if_parameter_null(parameters = list("NULL", "Null", "null")))
  expect_no_error(error_if_parameter_null(parameters = c(Inf,-Inf,numeric(0),NA, NaN)))
})
