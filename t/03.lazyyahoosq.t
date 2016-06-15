use Test::More;
use Test::Mojo;
use FindBin;
use Mojo::UserAgent;
use JSON::XS;

use lib "../lib";
require "$FindBin::Bin/../script/lazyyahoosq";

ok(open(my $pipe, '|-', "$FindBin::Bin/../script/lazyyahoosq", '-d') || die,
  "lazyyahoosq -d ");
ok(
  open(my $pipe, '|-', "$FindBin::Bin/../script/lazyyahoosq",
    '-s', 'AAPL', '-f', 's6')
    || die,
  "lazyyahoosq -s AAPL -f s6"
);

done_testing();
