package Lazy::Finance::Quote;

use strict;
use warnings;
use Mojo::UserAgent;
use XML::Simple qw(:strict);
use Hash::Flatten qw(:all);

our $VERSION  = '0.01';

my $prov_info = {
  yahoo => { url => 'http://query.yahooapis.com/v1/public' },
};

sub new { bless {}, shift }

my $xmls = XML::Simple->new(ForceArray => 1, KeepRoot => 1, KeyAttr => []);
my $ua   = Mojo::UserAgent->new;

sub query {
  my ($self, $symbol) = @_;
  my $sql_url = Mojo::URL->new('http://query.yahooapis.com/v1/public/yql')->query(
    q   => "select * from yahoo.finance.quotes where symbol in (\"$symbol\")",
    env => "store://datatables.org/alltableswithkeys"
  );
  my $xml = $ua->get($sql_url)->res->content->asset->slurp;
  my $xml_ds = $xmls->XMLin($xml);
  ## my $flat_hash = flatten($xml_ds);
  ## return $flat_hash if $flat_hash;
  return $xml_ds if $xml_ds;
  return undef;
}

sub get_id {
  my ($self, $provider) = @_;
  return 1 if $prov_info->{$provider};
  return undef;
}

1;
