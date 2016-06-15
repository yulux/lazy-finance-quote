use Test::More;
use Test::Mojo;
use FindBin;
use Mojo::UserAgent;
use JSON::XS;

use lib "../lib";
require "$FindBin::Bin/../script/lazyyahoosq";

## my $script = 'lazyyahoosq';

my $default_symbol   = 'AAPL';
my $default_provider = 'yahoo';


# HTML/XML
## ok('../script/lazyyahoosq -t', 'show symtab');

ok(open(my $pipe, '|-', "$FindBin::Bin/../script/lazyyahoosq", '-d') || die,
  "lazyyahoosq -d ");
ok(
  open(my $pipe, '|-', "$FindBin::Bin/../script/lazyyahoosq",
    '-s', 'AAPL', '-f', 's6')
    || die,
  "lazyyahoosq -s AAPL -f s6"
);
done_testing();
