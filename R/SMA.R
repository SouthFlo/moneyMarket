#' @title Smoothing Moving Average
#'
#' @description This function allows you to calculate the Smoothing Moving Average.
#' @keywords Stock Market
#' @param prices: A vector of prices.
#' @param n: The number of periods to include in the SMA calculation.
#' @export
#' @examples
#' SMA()

SMA <- function(prices, n, start = n) {
  if (n <= 0 || start < n || start > length(prices)) {
    stop("Invalid input: n must be positive, and start must be between n and length(prices)")
  }

  SMA <- rep(NA, length(prices))
  for (i in start:length(prices)) {
    SMA[i] <- mean(prices[(i-n+1):i])
  }

  return(SMA)
}


