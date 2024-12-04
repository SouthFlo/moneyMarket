test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("SMA function works correctly", {
  # Sample data
  prices <- c(10, 12, 15, 13, 18, 20)
  n <- 3

  # Expected SMA values
  expected_SMA <- c(NA, NA, 12, 13.33333, 15.33333, 17)

  # Calculate SMA
  calculated_SMA <- SMA(prices, n)

  # Compare expected and calculated values
  expect_equal(calculated_SMA, expected_SMA, tolerance = 1e-6)
})
