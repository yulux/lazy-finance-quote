# lazy-finance-quote [![Build Status](https://api.travis-ci.org/yulux/lazy-finance-quote.svg?branch=master)](https://travis-ci.org/yulux/lazy-finance-quote)

  A tiny CLI app for yahoo finance api

## (development version)

## Prereq

  libxml2-dev

## Installation from scratch

  Prepare non-root perl environment

	$ cd ~
	$ \curl -L https://install.perlbrew.pl | bash
	$ echo "source ~/perl5/perlbrew/etc/bashrc" >> .bashrc
	$ source ~/perl5/perlbrew/etc/bashrc
	$ perlbrew -n install perl-5.20.3
	$ tail -f ~/perl5/perlbrew/build.perl-5.20.3.log
	$ perlbrew list
	$   perl-5.20.3
	$ perlbrew switch perl-5.20.3
	$ perlbrew list
	$ * perl-5.20.3
	$ perlbrew install-cpanm
	$ cpanm https://github.com/yulux/lazy-finance-quote.git

## Start application

	$ hypnotoad $(which lazyfq)

## Stop application

	$ hypnotoad -s $(which lazyfq)

## Get quote, e.g. from Apple Inc. (AAPL) - NasdaqGS, as flattened hash

	$ curl -s localhost:8080/finance/yahoo/AAPL

## Actual Result, this datastructure will change

  {
     "data" : {
        "query:0.results:0.quote:0.Name:0" : "Apple Inc.",
        "query:0.results:0.quote:0.DaysHigh:0" : "99.35",
        "query:0.results:0.quote:0.LastTradeTime:0" : "4:00pm",
        "query:0.xmlns\\:yahoo" : "http://www.yahooapis.com/v1/base.rng",
        "query:0.results:0.quote:0.PercentChangeFromYearLow:0" : "+10.46%",
        "query:0.results:0.quote:0.StockExchange:0" : "NMS",
        "query:0.results:0.quote:0.ShortRatio:0" : "1.18",
        "query:0.results:0.quote:0.OneyrTargetPrice:0" : "124.93",
        "query:0.results:0.quote:0.Ask:0" : "98.95",
        "query:0.results:0.quote:0.Bid:0" : "98.90",
        "query:0.results:0.quote:0.DividendShare:0" : "2.28",
        "query:0.results:0.quote:0.PERatio:0" : "11.00",
        "query:0.results:0.quote:0.Volume:0" : "31712936",
        "query:0.results:0.quote:0.PercentChangeFromTwoHundreddayMovingAverage:0" : "-3.63%",
        "query:0.yahoo\\:lang" : "en-US",
        "query:0.results:0.quote:0.DaysLow:0" : "98.48",
        "query:0.results:0.quote:0.ChangeinPercent:0" : "-0.82%",
        "query:0.results:0.quote:0.DividendYield:0" : "2.31",
        "query:0.results:0.quote:0.DividendPayDate:0" : "2/11/2016",
        "query:0.results:0.quote:0.symbol" : "AAPL",
        "query:0.results:0.quote:0.TwoHundreddayMovingAverage:0" : "102.56",
        "query:0.results:0.quote:0.Change:0" : "-0.82",
        "query:0.results:0.quote:0.PriceBook:0" : "4.18",
        "query:0.yahoo\\:count" : "1",
        "query:0.results:0.quote:0.EarningsShare:0" : "8.98",
        "query:0.yahoo\\:created" : "2016-06-13T11:00:29Z",
        "query:0.results:0.quote:0.EPSEstimateNextYear:0" : "9.11",
        "query:0.results:0.quote:0.Change_PercentChange:0" : "-0.82 - -0.82%",
        "query:0.results:0.quote:0.EPSEstimateNextQuarter:0" : "1.66",
        "query:0.results:0.quote:0.PriceEPSEstimateCurrentYear:0" : "11.94",
        "query:0.results:0.quote:0.EPSEstimateCurrentYear:0" : "8.28",
        "query:0.results:0.quote:0.AverageDailyVolume:0" : "38160100",
        "query:0.results:0.quote:0.YearRange:0" : "89.47 - 132.97",
        "query:0.results:0.quote:0.LastTradePriceOnly:0" : "98.83",
        "query:0.results:0.quote:0.Currency:0" : "USD",
        "query:0.results:0.quote:0.PercentChangeFromFiftydayMovingAverage:0" : "+1.91%",
        "query:0.results:0.quote:0.LastTradeWithTime:0" : "4:00pm - <b>98.83</b>",
        "query:0.results:0.quote:0.EBITDA:0" : "78.50B",
        "query:0.results:0.quote:0.ChangeFromTwoHundreddayMovingAverage:0" : "-3.73",
        "query:0.results:0.quote:0.PriceSales:0" : "2.40",
        "query:0.results:0.quote:0.PreviousClose:0" : "99.65",
        "query:0.results:0.quote:0.YearHigh:0" : "132.97",
        "query:0.results:0.quote:0.PriceEPSEstimateNextYear:0" : "10.85",
        "query:0.results:0.quote:0.MarketCapitalization:0" : "541.33B",
        "query:0.results:0.quote:0.BookValue:0" : "23.81",
        "query:0.results:0.quote:0.LastTradeDate:0" : "6/10/2016",
        "query:0.results:0.quote:0.ChangeFromFiftydayMovingAverage:0" : "1.85",
        "query:0.results:0.quote:0.PercebtChangeFromYearHigh:0" : "-25.67%",
        "query:0.results:0.quote:0.Open:0" : "98.51",
        "query:0.results:0.quote:0.Symbol:0" : "AAPL",
        "query:0.results:0.quote:0.YearLow:0" : "89.47",
        "query:0.results:0.quote:0.ChangeFromYearHigh:0" : "-34.14",
        "query:0.results:0.quote:0.ChangeFromYearLow:0" : "9.36",
        "query:0.results:0.quote:0.PercentChange:0" : "-0.82%",
        "query:0.results:0.quote:0.ExDividendDate:0" : "5/5/2016",
        "query:0.results:0.quote:0.DaysRange:0" : "98.48 - 99.35",
        "query:0.results:0.quote:0.FiftydayMovingAverage:0" : "96.98",
        "query:0.results:0.quote:0.PEGRatio:0" : "1.29"
     },
     "symbol" : "AAPL",
     "time_stamp" : 1465815629,
     "provider" : "yahoo"
  }
 
