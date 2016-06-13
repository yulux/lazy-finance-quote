use Test::More;
use Test::Mojo;
use FindBin;
use Mojo::UserAgent;
use JSON::XS;

use lib "../lib";
require "$FindBin::Bin/../script/lazyfq";

my $default_provider = 'AAPL';

# HTML/XML
my $t = Test::Mojo->new;

$t->get_ok('/')->status_is(200);
$t->get_ok('/finance/yahoo')->status_is(200);
$t->get_ok('/finance/yahoo/AAPL')->status_is(200);

done_testing();
