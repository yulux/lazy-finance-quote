use Test::More;
use Test::Mojo;
use Data::Dumper;
use FindBin;
use lib "../lib";
require "$FindBin::Bin/../script/lazyfq";

# HTML/XML
my $t = Test::Mojo->new;

$t->get_ok('/finance/yahoo')->status_is(200);
$t->get_ok('/')->status_is(200);

done_testing();
