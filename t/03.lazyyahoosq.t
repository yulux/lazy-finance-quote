use Test::More;
use Test::Mojo;
use FindBin;
use Mojo::UserAgent;
use JSON::XS;

use lib "../lib";
require "$FindBin::Bin/../script/lazyyahoosq";

my $script = 'lazyyahoosq';

my $default_symbol   = 'AAPL';
my $default_provider = 'yahoo';


# HTML/XML
ok('../script/lazyyahoosq -t', 'show symtab');

done_testing();
