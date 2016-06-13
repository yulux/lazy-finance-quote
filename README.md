# lazy-finance-quote (development version)

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

