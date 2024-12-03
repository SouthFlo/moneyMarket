# Package needed
#install.packages("devtools")
#install.packages("available")

# Libraries
library(usethis)
library(available)
library(devtools)
library(roxygen2)
library(testthat)

available("moneyMarket")

# Create a package skeleton named moneyMarket
create_package("moneyMarket")

dir(".")

# Select license
use_mit_license()

# Imports Packages
use_package("dplyr", type = "Imports", min_version ="1.1.0")
use_package("zoo", type = "Imports", min_version = "1.1.0")
use_package("readr", type = "Imports", min_version = "1.1.0")

# Suggested Packages
use_package("ggplot2", type = "Suggests", min_version ="3.0.0")

# Generate all function documentation
roxygenize()

# Install
setwd("..")
install("moneyMarket")

# Create testing framework template
use_testthat()

# Creating test file for each R function
use_test("dividend_yield")
use_test("EMA")
use_test("PB_ratio")
use_test("PE_ratio")
use_test("PEG_ratio")
use_test("SMA")

# Run all package tests
test_package("moneyMarket")






