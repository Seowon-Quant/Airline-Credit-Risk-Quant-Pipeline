Windows PowerShell
Copyright (C) Microsoft Corporation. All rights reserved.

Install the latest PowerShell for new features and improvements! https://aka.ms/PSWindows

PS C:\Users\USER> python
Python 3.14.4 (tags/v3.14.4:23116f9, Apr  7 2026, 14:10:54) [MSC v.1944 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license" for more information.
>>> import yfinance as yf
... import pandas as pd
... import os
...
... # Tickers for 9 global carriers
... tickers = ["DAL", "UAL", "AAL", "LUV", "JBLU", "SKYW", "CPA", "ALGT", "ULCC"]
...
... if not os.path.exists('data'):
...     os.makedirs('data')
...
... print("Starting Balance Sheet extraction for R-based analysis...")
...
... for t in tickers:
...     try:
...         airline = yf.Ticker(t)
...         # Extract only Balance Sheet for R analysis
...         bs = airline.balance_sheet
...         if not bs.empty:
...             bs.to_csv(f"data/{t}_balance_sheet.csv")
...             print(f"SUCCESS: {t} BS saved for R.")
...     except Exception as e:
...         print(f"ERROR: {t} failed -> {e}")
...
... print("Extraction complete. Ready for Market Cap calculation in R.")
...
Starting Balance Sheet extraction for R-based analysis...
SUCCESS: DAL BS saved for R.
SUCCESS: UAL BS saved for R.
SUCCESS: AAL BS saved for R.
SUCCESS: LUV BS saved for R.
SUCCESS: JBLU BS saved for R.
SUCCESS: SKYW BS saved for R.
SUCCESS: CPA BS saved for R.
SUCCESS: ALGT BS saved for R.
SUCCESS: ULCC BS saved for R.
Extraction complete. Ready for Market Cap calculation in R.
>>>
