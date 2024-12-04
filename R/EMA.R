#' @title Exponential Moving Average (EMA)
#'
#' @description This function allows you to calculate the Smoothing Moving Average.
#' @keywords Stock Market
#' @param prices: A vector of prices.
#' @param n: The number of periods to include in the EMA calculation.
#' @export
#' @examples
#' @return The function returns a vector containing the calculated EMA values for the entire data series.
#' EMA()

EMA <- function(prices, n, initial_EMA = NULL) {
  if (n <= 0 || length(prices) == 0) {
    stop("Invalid input: n must be positive and prices must not be empty.")
  }

  if (is.null(initial_EMA)) {
    initial_EMA <- prices[1]
  }

  alpha <- 2 / (n + 1)
  EMA <- rep(NA, length(prices))
  EMA[1] <- initial_EMA

  for (i in 2:length(prices)) {
    EMA[i] <- alpha * prices[i] + (1 - alpha) * EMA[i - 1]
  }

  return(EMA)
}
