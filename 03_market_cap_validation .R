mcaps <- getQuote(airline_tickers, what = "marketCap")
total_sample_mcap <- sum(mcaps$marketCap)
