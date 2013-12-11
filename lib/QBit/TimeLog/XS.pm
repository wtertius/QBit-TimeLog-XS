package QBit::TimeLog::XS;

our $VERSION = 0.001;

use base qw(QBit::TimeLog);

require XSLoader;
XSLoader::load('QBit::TimeLog::XS', $VERSION);

sub _analyze {@{$_[0]->analyze()}}

TRUE;