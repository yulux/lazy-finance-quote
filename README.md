# lazy-finance-quote (development version, api can change anytime)

  CLI app for yahoo finance api

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
