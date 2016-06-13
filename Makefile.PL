use 5.010001;

use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  NAME         => 'lazy-finance-quote',
  VERSION_FROM => 'lib/Lazy/Finance/Quote.pm',
  ABSTRACT     => 'ClI interface for processing quote symbols from query.yahooapis.com',
  AUTHOR       => 'Michael Kapp <limodev@yulux.de>',
  LICENSE      => 'artistic_2',
  META_MERGE   => {
    dynamic_config => 0,
    'meta-spec'    => {version => 2},
    no_index       => {directory => ['examples', 't']},
    prereqs        => {runtime => {requires => {perl => '5.010001'}}},
    resources      => {
      bugtracker => {web => 'https://github.com/yulux/lazy-finance-quote/issues'},
      homepage   => 'https://www.yulux.de',
      license    => ['http://www.opensource.org/licenses/artistic-license-2.0'],
      repository => {
        type => 'git',
        url  => 'https://github.com/yulux/lazy-finance-quote.git',
        web  => 'https://github.com/yulux/lazy-finance-quote',
      },
    },
  },
  PREREQ_PM => {
    'Mojolicious' => '6.64',
    'Mouse' => 'v2.4.5',
    'Catmandu' => '1.0201',
    'Catmandu::Store::DBI' => '0.0506',
    'XML::Simple' => '2.22',
    'Hash::Flatten' => '1.19',
    'CryptX' => '0.036',
  },
  EXE_FILES => ['script/lazyfq'],
  test => {TESTS => 't/*.t t/*/*.t'}
);
