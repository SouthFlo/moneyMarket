#' @title Price-Earnings Ratio (P/E Ratio)
#'
#' @description The Price-Earnings Ratio (P/E Ratio) is a valuation ratio that compares a company's current share price to its earnings per share (EPS).
#' @keywords Stock Market
#' @param share_price: The current market price of the stock.
#' @param EPS: The Earnings Per Share of the company.
#' @export
#' @examples
#' PE_ratio()

PE_ratio <- function(share_price, EPS) {
  if (share_price <= 0 || EPS <= 0 ) {
    stop("Invalid input: share_price and EPS must be positive.")
  }
  PE_ratio <- share_price / EPS
  return(PE_ratio)
}


