# 1. Calculate Annualized Volatility
# Using sqrt(252) to annualize daily log returns
vol_results <- apply(airline_log_returns, 2, sd) * sqrt(252)

# 2. Compute Sample Statistics (9 Airlines)
sample_mean <- mean(vol_results)
sample_sd <- sd(vol_results) # Standard deviation of the volatility values themselves

# 3. Define 'Dangerous' Threshold (1-SD logic)
# This identifies carriers with statistically significant excess volatility
dangerous_threshold <- sample_mean + sample_sd

# 4. Display Results
print(paste("Sample Mean Volatility:", round(sample_mean, 4)))
print(paste("Sample SD of Volatility:", round(sample_sd, 4)))
print(paste("Dangerous Threshold (Mean + 1SD):", round(dangerous_threshold, 4)))
