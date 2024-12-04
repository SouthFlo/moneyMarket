#' @title Price-to-Book ratio
#'
#' @description The P/B ratio is a valuation metric that compares a company's market value to its book value.
#' @keywords Stock Market
#' @param tot_assets: Total assets of the company
#' @param tot_liabilities: Total liabilities of the company
#' @param price_per_share: Current market price of the company's stock
#' @param n: Number of shares outstanding
#' @export
#' @examples
#' PB_ratio()

PB_ratio <- function(tot_assets, tot_liabilities, price_per_share, n) {
  if (n <= 0 || BVPS == 0 ) {
    stop("Invalid input: n must be positive and BVPS must be positive.")
  }
  book_value <- tot_assets - tot_liabilities # Calculates the book value of the company by subtracting total liabilities from total assets.
  BVPS <- book_value / n # Divides the book value by the number of shares outstanding to get the book value per share.
  PB_ratio <- price_per_share / BVPS # Divides the price per share by the BVPS to get the PB ratio.
  return(PB_ratio)
}


