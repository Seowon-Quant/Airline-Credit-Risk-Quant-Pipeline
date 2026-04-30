## Quant-Risk-Analysis-Global-Airlines
A foundational quantitative framework for the aviation sector, focused on establishing a robust data pipeline for Merton-style structural modeling and volatility analysis.

#### Project Workflow: Building the Data Infrastructure

This project represents the first major milestone in my 3month quantitative journey. I focused on building a reliable bridge between raw financial filings and structured analysis, ensuring every data point is verified at the source.

• Automated Financial Extraction (Python)

I developed a Python script using yfinance to programmatically scrape the full balance sheets of 9 major global carriers. This automated pipeline replaces manual data entry, ensuring the research foundation is built on fresh, primary source data.

•Market Data Integration (R)

While extraction is handled in Python, the core data engine is built in R. I personally handle daily adjusted closing prices and market capitalization to maintain high-frequency accuracy for upcoming volatility metrics.

•The 1-SD Volatility Hypothesis

In my preliminary analysis, I defined "Dangerous" risk levels as volatility exceeding 1 Standard Deviation (Z-score > 1). In the high-leverage aviation sector, being in the top 15.9% of the volatility distribution serves as a critical leading indicator of structural stress.

#### Current Roadmap & Academic Guidance

Following feedback from Prof. Aaron Kim, the framework is evolving from a baseline data engine into a sophisticated risk assessment system.

[Completed] Data Engineering Pipeline
Successfully integrated Python/R workflows covering 49.8% of the global industry market cap. All balance sheets are structured and ready for structural modeling.

[In Progress] Correlation & Risk Spillover
I am currently analyzing the Correlation Matrix to identify systemic risk patterns and spillover effects within the sector.  

[Planned] 1% VaR & Fat-tail Analysis
To account for "Black Swan" events that standard normal distributions miss, I will implement 1% Value-at-Risk (VaR) and Fat-tail analysis, prioritizing the 1% threshold to capture extreme market stress as advised.  

[Future] Merton DTD & MVO
The final milestone involves calculating the Distance to Default (DTD) and plotting the Efficient Frontier to find the optimal portfolio that maximizes the Sharpe Ratio.

#### Research Challenges & Thinking Process

• Technical Flexibility: When R proved difficult for complex scraping, I pivoted to Python to build a specialized harvester, then bridged the data back into R for statistical rigor.

• Defining the Boundary: I am spending significant time cross-verifying debt structures in airline_VOL_4.xlsx to ensure the "Default Boundary" is accurately defined before running Merton-style simulations.

• Logic over Speed: I prioritize the "Why" behind the math—ensuring that my risk tiers and debt classifications are rooted in financial theory, not just mechanical code.
