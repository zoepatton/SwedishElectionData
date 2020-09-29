library(testthat)

context("Testing the election_data function")

test_that("the validity of the inputs of the function",{
  
  expect_error(election_data("kommun", "landsting"))
  expect_error(election_data("riksdag", list("valdistrikt","kommun")))
  expect_error(election_data(12, "kommun"))
  expect_error(election_data("kommun", 12))
  expect_error(election_data("valdistrikt", "valdistrikt"))
  expect_error(election_data("kommun", df()))
  expect_error(election_data(1552, 12))
})


test_that("election_data() returns a df", {
  df = election_data("landsting", "kommun")
  expect_true(is.data.frame(df))
  expect_equal(df[3, 2], "15")
})

