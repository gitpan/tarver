use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'			=> 'tarver',
    'VERSION_FROM'	=> 'tarver', # finds $VERSION
	'EXE_FILES'		=> [ 'tarver' ],
	'NO_META'   	=> 1,
    'PREREQ_PM'		=> {
    		Getopt::Std,
    		Archive::Tar,
    	}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM => 'tarver', # retrieve abstract from module
       AUTHOR     => 'Qing-Jie Zhou <qjzhou@hotmail.com>') : ()),
);