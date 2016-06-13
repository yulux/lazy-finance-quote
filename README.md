# lazy-finance-quote [![Build Status](https://api.travis-ci.org/yulux/lazy-finance-quote.svg?branch=master)](https://travis-ci.org/yulux/lazy-finance-quote)

  A tiny CLI app for yahoo finance api

## (development version)

## Prereq

  libxml2-dev

## Prepare perl environment from scratch

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

## Install application with cpanm

	$ cpanm https://github.com/yulux/lazy-finance-quote.git

## Start application

	$ hypnotoad $(which lazyfq)

## Stop application

	$ hypnotoad -s $(which lazyfq)

## Get quote, e.g. from Apple Inc. (AAPL) - NasdaqGS

	$ curl -s localhost:8080/finance/yahoo/AAPL

## The JSON data hash contains the result - as is - from the yahoo finance api
 
```
{
   "time_stamp" : 1465816826,
   "symbol" : "AAPL",
   "data" : {
      "query" : [
         {
            "results" : [
               {
                  "quote" : [
                     {
                        "StockExchange" : [
                           "NMS"
                        ],
                        "PercentChangeFromYearLow" : [
                           "+10.46%"
                        ],
                        "PercentChangeFromTwoHundreddayMovingAverage" : [
                           "-3.63%"
                        ],
                        "HoldingsGainPercentRealtime" : [
                           {}
                        ],
                        "DaysLow" : [
                           "98.48"
                        ],
                        "Symbol" : [
                           "AAPL"
                        ],
                        "HoldingsGainPercent" : [
                           {}
                        ],
                        "HoldingsGainRealtime" : [
                           {}
                        ],
                        "PreviousClose" : [
                           "99.65"
                        ],
                        "BidRealtime" : [
                           {}
                        ],
                        "PercentChangeFromFiftydayMovingAverage" : [
                           "+1.91%"
                        ],
                        "Change" : [
                           "-0.82"
                        ],
                        "LastTradeDate" : [
                           "6/10/2016"
                        ],
                        "DaysHigh" : [
                           "99.35"
                        ],
                        "Change_PercentChange" : [
                           "-0.82 - -0.82%"
                        ],
                        "BookValue" : [
                           "23.81"
                        ],
                        "TradeDate" : [
                           {}
                        ],
                        "PERatioRealtime" : [
                           {}
                        ],
                        "LastTradeRealtimeWithTime" : [
                           {}
                        ],
                        "ChangeRealtime" : [
                           {}
                        ],
                        "ExDividendDate" : [
                           "5/5/2016"
                        ],
                        "YearRange" : [
                           "89.47 - 132.97"
                        ],
                        "MarketCapRealtime" : [
                           {}
                        ],
                        "HoldingsValueRealtime" : [
                           {}
                        ],
                        "AverageDailyVolume" : [
                           "38160100"
                        ],
                        "TickerTrend" : [
                           {}
                        ],
                        "PEGRatio" : [
                           "1.29"
                        ],
                        "symbol" : "AAPL",
                        "YearHigh" : [
                           "132.97"
                        ],
                        "HoldingsGain" : [
                           {}
                        ],
                        "PERatio" : [
                           "11.00"
                        ],
                        "EBITDA" : [
                           "78.50B"
                        ],
                        "DaysValueChangeRealtime" : [
                           {}
                        ],
                        "ErrorIndicationreturnedforsymbolchangedinvalid" : [
                           {}
                        ],
                        "OrderBookRealtime" : [
                           {}
                        ],
                        "ChangeFromYearHigh" : [
                           "-34.14"
                        ],
                        "Name" : [
                           "Apple Inc."
                        ],
                        "DaysRange" : [
                           "98.48 - 99.35"
                        ],
                        "AfterHoursChangeRealtime" : [
                           {}
                        ],
                        "PercebtChangeFromYearHigh" : [
                           "-25.67%"
                        ],
                        "AskRealtime" : [
                           {}
                        ],
                        "Ask" : [
                           "98.95"
                        ],
                        "ChangeFromTwoHundreddayMovingAverage" : [
                           "-3.73"
                        ],
                        "LastTradePriceOnly" : [
                           "98.83"
                        ],
                        "EPSEstimateNextQuarter" : [
                           "1.66"
                        ],
                        "Open" : [
                           "98.51"
                        ],
                        "DividendYield" : [
                           "2.31"
                        ],
                        "DaysValueChange" : [
                           {}
                        ],
                        "Notes" : [
                           {}
                        ],
                        "PriceBook" : [
                           "4.18"
                        ],
                        "PercentChange" : [
                           "-0.82%"
                        ],
                        "DividendPayDate" : [
                           "2/11/2016"
                        ],
                        "PriceEPSEstimateNextYear" : [
                           "10.85"
                        ],
                        "Bid" : [
                           "98.90"
                        ],
                        "OneyrTargetPrice" : [
                           "124.93"
                        ],
                        "Volume" : [
                           "31712936"
                        ],
                        "Commission" : [
                           {}
                        ],
                        "FiftydayMovingAverage" : [
                           "96.98"
                        ],
                        "YearLow" : [
                           "89.47"
                        ],
                        "LastTradeTime" : [
                           "4:00pm"
                        ],
                        "PriceSales" : [
                           "2.40"
                        ],
                        "DividendShare" : [
                           "2.28"
                        ],
                        "MarketCapitalization" : [
                           "541.33B"
                        ],
                        "TwoHundreddayMovingAverage" : [
                           "102.56"
                        ],
                        "HoldingsValue" : [
                           {}
                        ],
                        "ShortRatio" : [
                           "1.18"
                        ],
                        "ChangeFromFiftydayMovingAverage" : [
                           "1.85"
                        ],
                        "EPSEstimateCurrentYear" : [
                           "8.28"
                        ],
                        "Currency" : [
                           "USD"
                        ],
                        "MoreInfo" : [
                           {}
                        ],
                        "EarningsShare" : [
                           "8.98"
                        ],
                        "ChangeFromYearLow" : [
                           "9.36"
                        ],
                        "SharesOwned" : [
                           {}
                        ],
                        "PricePaid" : [
                           {}
                        ],
                        "LowLimit" : [
                           {}
                        ],
                        "HighLimit" : [
                           {}
                        ],
                        "EPSEstimateNextYear" : [
                           "9.11"
                        ],
                        "AnnualizedGain" : [
                           {}
                        ],
                        "ChangePercentRealtime" : [
                           {}
                        ],
                        "PriceEPSEstimateCurrentYear" : [
                           "11.94"
                        ],
                        "DaysRangeRealtime" : [
                           {}
                        ],
                        "LastTradeWithTime" : [
                           "4:00pm - <b>98.83</b>"
                        ],
                        "ChangeinPercent" : [
                           "-0.82%"
                        ]
                     }
                  ]
               }
            ],
            "yahoo:created" : "2016-06-13T11:20:25Z",
            "xmlns:yahoo" : "http://www.yahooapis.com/v1/base.rng",
            "yahoo:count" : "1",
            "yahoo:lang" : "en-US"
         }
      ]
   },
   "provider" : "yahoo"
}

```
 
