use Test::More;
use Test::Mojo;
use FindBin;
use Mojo::UserAgent;
use JSON::XS;

use lib "../lib";
require "$FindBin::Bin/../script/lazyfq";

my $default_symbol = 'AAPL';
my $default_provider = 'yahoo';

# HTML/XML
my $t = Test::Mojo->new;
my $x = decode_json($t->get_ok('/finance/yahoo/AAPL')->tx->res->content->asset->slurp);

ok($x->{symbol} eq $default_symbol, $x->{symbol});
ok($x->{time_stamp} =~ qr/\d+/, "time: $x->{time_stamp}");
ok($x->{provider} =~ qr/$default_provider/, $x->{provider});

done_testing();
