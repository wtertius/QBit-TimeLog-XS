use Test::More;

use qbit;

use QBit::TimeLog::XS;

my $timelog = new_ok('QBit::TimeLog::XS');

$timelog->start('Main prog');

$timelog->start('Action 1');
$_++ foreach (0..1000);
$timelog->finish();

$timelog->start('Action 2');
$timelog->start('Действие 3');
$_++ foreach (0..5000);
$timelog->finish();
$timelog->finish();

$timelog->finish();

done_testing();