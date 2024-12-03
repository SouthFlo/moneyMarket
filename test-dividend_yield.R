test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("dividend_yield calculates correctly", {
  dividend_per_share <- 2
  share_price <- 50
  expected_yield <- 4

  yield <- dividend_yield(dividend_per_share, share_price)

  expect_equal(yield, expected_yield)
})
