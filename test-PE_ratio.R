test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("PE_ratio function works correctly", {
  # Sample data
  share_price <- 100
  EPS <- 5

  # Expected P/E ratio
  expected_PE_ratio <- 20

  # Calculate P/E ratio
  calculated_PE_ratio <- PE_ratio(share_price, EPS)

  # Compare expected and calculated values
  expect_equal(calculated_PE_ratio, expected_PE_ratio)
})
