# ---------------------------------------------------------
# Automated Financial Data Retrieval & Return Analysis
# Purpose: Support Merton Model Volatility Calculation
# ---------------------------------------------------------

# Load required libraries
library(quantmod) # Financial modelling framework
library(magrittr) # For using the pipe operator

# 1. Define the Universe: Major Global Airline Tickers
airline_tickers <- c("DAL", "UAL", "AAL", "LUV", "JBLU", "SKYW", "CPA", "ALGT", "ULCC")

# 2. Set the Time Horizon: 5-year Look-back Period
end_date <- Sys.Date()
start_date <- end_date - (365 * 5)

# 3. Bulk Data Retrieval from Yahoo Finance
getSymbols(airline_tickers, from = start_date, to = end_date, src = "yahoo")

# 4. Data Extraction & Time-series Alignment
# Extract 'Adjusted Close' and merge to ensure synchronized dates
price_list <- lapply(airline_tickers, function(x) Ad(get(x)))
all_prices <- do.call(merge, price_list)
colnames(all_prices) <- airline_tickers

# 5. Calculate Log Returns for Volatility Estimation
# Formula: ln(P_t / P_{t-1})
# na.omit() is used to remove NAs to prevent distortion in metrics
airline_log_returns <- diff(log(all_prices)) %>% na.omit()

# 6. Basic Diagnostics
head(airline_log_returns)
