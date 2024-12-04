#' @title Price-to-Earnings Growth (PEG) Ratio
#'
#' @description The PEG ratio is calculated by taking the P/E ratio of a company and dividing it by the year-over-year growth rate of its earnings as an estimate going forward.
#' Consider allowing the function to take vectors of share_price, EPS, and Earnings_Growth_Rate values, enabling the calculation of PEG ratios for multiple companies at once.
#' A PEG ratio less than 1 is generally considered undervalued, as the stock's valuation is lower relative to its expected earnings growth. A PEG ratio greater than 1 may suggest
#' that the stock is overvalued, especially if the growth rate is not significantly higher.
#' @keywords Stock Market
#' @param share_price: The current market price of the stock.
#' @param EPS: The Earnings Per Share of the company.
#' @param Earnings_Growth_Rate: The expected annual earnings growth rate.
#' @export
#' @examples
#' PEG_ratio()

PEG_ratio <- function(share_price, EPS, Earnings_Growth_Rate) {
  if (share_price <= 0 || EPS <= 0 || Earnings_Growth_Rate <= 0) {
    stop("Invalid input: share_price, EPS, Earnings_Growth_Rate must be positive.")
  }
  PE_ratio <- share_price / EPS
  PEG_ratio <- PE_ratio / Earnings_Growth_Rate
  return(PEG_ratio)
}
