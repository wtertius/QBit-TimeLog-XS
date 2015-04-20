use 5.014002;
use ExtUtils::MakeMaker;

WriteMakefile(
    AUTHOR       => 'Dmitry Lukiyanchuk <wtertius@gmail.com>',
    NAME         => 'QBit::TimeLog::XS',
    VERSION_FROM => 'lib/QBit/TimeLog/XS.pm',
    PREREQ_PM    => {'QBit::TimeLog' => 0},
    LIBS         => ['-lrt'],
    DEFINE       => '',
    CC           => 'g++',
    LD           => '$(CC)',
    INC          => '-I.',
    CCFLAGS      => '',
    XSOPT        => '-C++',
    TYPEMAPS     => ['perlobject.map'],
);
