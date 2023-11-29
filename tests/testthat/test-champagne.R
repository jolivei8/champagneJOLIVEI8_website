
library(testthat)
library(champagneJOLIVEI8)

test_that("champagne_glass returns correct results", {
  # Define expected results based on previous verification
  expected_results <- c(2.094, 21.205, 84.823)

  # Run the function
  actual_results <- champagne_glass(heights = c(2, 3, 4), radii = c(1, 2, 3))

  # Compare actual and expected results
  expect_equal(actual_results, expected_results, tolerance = 0.001)
})

test_that("vectorized_for_loop returns correct results", {
  # Define expected results based on previous verification
  expected_results <- c(2.094, 21.205, 84.823)

  # Run the function
  actual_results <- vectorized_for_loop(heights = c(2, 3, 4), radii = c(1, 2, 3))

  # Compare actual and expected results
  expect_equal(actual_results, expected_results, tolerance = 0.001)
})

test_that("vectorized_purrr_map returns correct results", {
  # Define expected results based on previous verification
  expected_results <- c(2.094, 21.205, 84.823)

  # Run the function
  actual_results <- vectorized_purrr_map(heights = c(2, 3, 4), radii = c(1, 2, 3))

  # Compare actual and expected results
  expect_equal(actual_results, expected_results, tolerance = 0.001)
})

test_that("vectorized_sapply returns correct results", {
  # Define expected results based on previous verification
  expected_results <- c(2.094, 21.205, 84.823)

  # Run the function
  actual_results <- vectorized_sapply(heights = c(2, 3, 4), radii = c(1, 2, 3))

  # Compare actual and expected results
  expect_equal(actual_results, expected_results, tolerance = 0.001)
})

test_that("vectorize_function returns correct results", {
  # Define expected results based on previous verification
  expected_results <- c(2.094, 21.205, 84.823)

  # Run the function
  actual_results <- vectorize_function(heights = c(2, 3, 4), radii = c(1, 2, 3))

  # Compare actual and expected results
  expect_equal(actual_results, expected_results, tolerance = 0.001)
})
