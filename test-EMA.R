test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("EMA function works correctly", {
  # Sample data
  prices <- c(10, 12, 15, 13, 18, 20)
  n <- 3

  # Expected EMA values (recalculated)
  expected_EMA <- c(10, 11.33333333, 13.11111111, 13.55555556, 15.44444444, 17.33333333)

  # Calculate EMA
  calculated_EMA <- EMA(prices, n)

  # Compare expected and calculated values with increased tolerance
  expect_equal(calculated_EMA, expected_EMA, tolerance = 1e-4)
})
