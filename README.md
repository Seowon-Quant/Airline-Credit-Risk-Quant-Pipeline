## Quant-Risk-Analysis-Global-Airlines
A foundational quantitative framework for the aviation sector, focused on establishing a robust data pipeline for Merton-style structural modeling and volatility analysis.

#### Project Workflow: Building the Data Infrastructure

This project represents the first major milestone in my 3month quantitative journey. This framework prioritizes methodological rigor over mechanical computation, ensuring a reliable bridge between raw financial filings and structured analysis where every data point is verified at its primary source.

• Automated Financial Extraction (Python)

I developed a Python script using yfinance to programmatically scrape the full balance sheets of 9 major global carriers. This automated pipeline replaces manual data entry, ensuring the research foundation is built on fresh, primary source data.

•Market Data Integration (R)

While extraction is handled in Python, the core data engine is built in R. I personally handle daily adjusted closing prices and market capitalization to maintain high-frequency accuracy for upcoming volatility metrics.

•The 1-SD Volatility Hypothesis

In my preliminary analysis, I defined "Dangerous" risk levels as volatility exceeding 1 Standard Deviation (Z-score > 1). In the high-leverage aviation sector, Utilizing Gaussian distribution logic, I defined 'Dangerous' risk levels as volatility exceeding +1 Standard Deviation (Z-score > 1) In the high-leverage aviation sector, identifying carriers in the right-tail (top 15.9%) of the volatility distribution serves as a critical leading indicator of structural stress and DtD (Distance-to-Default) compression.

#### Current Roadmap & Academic Guidance

Following feedback from Prof. Aaron Kim, the framework is evolving from a baseline data engine into a sophisticated risk assessment system.

[Completed] Data Engineering Pipeline
Successfully integrated a Python/R hybrid workflow covering 49.8% ($109.6B) of the global industry market cap, ensuring the sample is a statistically significant proxy for systemic sector trends.

[In Progress] Correlation & Risk Spillover
I am currently analyzing the Correlation Matrix to identify systemic risk patterns and spillover effects within the sector.  

[Planned] 1% VaR & Fat-tail Analysis
To account for "Black Swan" events that standard normal distributions miss, I will implement 1% Value-at-Risk (VaR) and Fat-tail analysis, prioritizing the 1% threshold to capture extreme market stress as advised.  

[Future] Merton DTD & MVO
The final milestone involves calculating the Distance to Default (DTD) and plotting the Efficient Frontier to find the optimal portfolio that maximizes the Sharpe Ratio.

#### Research Challenges & Thinking Process

• Technical Flexibility: When R proved difficult for complex scraping, I pivoted to Python to build a specialized harvester, then bridged the data back into R for statistical rigor.

• Defining the Boundary: I am spending significant time cross-verifying debt structures in airline_VOL_4.xlsx to ensure the "Default Boundary" is accurately defined before running Merton-style simulations.

• Logic over Speed 

: The 'Default Boundary': Spent significant time cross-verifying debt seniority and lease structures in airline_VOL_4.xlsx to accurately define the Default Barrier before initiating Merton-style simulations.

: Theory-First Approach: I prioritize the financial theory behind the math—ensuring risk tiers are rooted in structural credit fundamentals, not just algorithmic outputs.
