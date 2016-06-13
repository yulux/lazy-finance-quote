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

## Get quote, e.g. from Apple Inc. (AAPL) - NasdaqGS 

	$ curl -s localhost:8080/finance/yahoo/AAPL
