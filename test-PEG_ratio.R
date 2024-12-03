test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("PEG_ratio function works correctly", {
  # Sample data
  share_price <- 100
  EPS <- 5
  earnings_growth_rate <- 0.15 # 15%

  # Expected PEG ratio
  expected_PEG_ratio <- 13.33333

  # Calculate PEG ratio
  calculated_PEG_ratio <- PEG_ratio(share_price, EPS, earnings_growth_rate)

  # Compare expected and calculated values
  expect_equal(calculated_PEG_ratio, expected_PEG_ratio, tolerance = 1e-6)
})

