use 5.008;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Lingua::PT::Num2Words',
    'VERSION_FROM'	=> 'Num2Words.pm', # finds $VERSION
    'PREREQ_PM'		=> {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (#ABSTRACT_FROM => 'Num2Words.pm', # retrieve abstract from module
       AUTHOR     => 'Jose Alves de Castro <jac@localdomain>') : ()),
);
