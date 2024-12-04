test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("PB_ratio function works correctly", {
  # Sample data
  tot_assets <- 1000000
  tot_liabilities <- 500000
  price_per_share <- 20
  n <- 100000

  # Expected PB ratio
  expected_PB_ratio <- 4

  # Calculate PB ratio
  calculated_PB_ratio <- PB_ratio(tot_assets, tot_liabilities, price_per_share, n)

  # Compare expected and calculated values
  expect_equal(calculated_PB_ratio, expected_PB_ratio)
})
