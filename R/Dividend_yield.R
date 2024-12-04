#' @title Dividend Yield
#'
#' @description Calculates the dividend yield based on the given dividend per share and share price. A financial ratio that shows how much
#' a company pays out in dividends relative to its share price.
#' @keywords Stock Market
#' @param dividend_per_share: The annual dividend paid per share.
#' @param share_price: The current market price of the share.
#' @export
#' @examples
#' dividend_yeild()

dividend_yield <- function(dividend_per_share, share_price) {
  if (dividend_per_share <= 0 || share_price <= 0) {
    stop("Invalid input: share_price, EPS, Earnings_Growth_Rate must be positive.")
  }
  dividend_yield <- (dividend_per_share / share_price) * 100 # Calculate the dividend yield
  return(dividend_yield)
}
