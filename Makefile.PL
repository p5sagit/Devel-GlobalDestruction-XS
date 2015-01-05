use strict;
use warnings;

require 5.006;

use ExtUtils::MakeMaker;

my $mymeta_works = eval { ExtUtils::MakeMaker->VERSION('6.5707'); 1 };
my $mymeta = $mymeta_works || eval { ExtUtils::MakeMaker->VERSION('6.5702'); 1 };

my %WriteMakefileArgs = (
  NAME                => 'Devel::GlobalDestruction::XS',
  AUTHOR              => 'Yuval Kogman <nothingmuch@woobling.org>',
  VERSION_FROM        => 'lib/Devel/GlobalDestruction/XS.pm',
  ABSTRACT_FROM       => 'lib/Devel/GlobalDestruction/XS.pm',
  LICENSE             => 'perl',
  INSTALLDIRS         => 'site',
  PL_FILES            => { },
  MIN_PERL_VERSION    => '5.006',
  META_ADD => {
    resources => {
      repository => 'git://git.shadowcat.co.uk/p5sagit/Devel-GlobalDestruction-XS.git',
      bugtracker => 'http://rt.cpan.org/Public/Dist/Display.html?Name=Devel-GlobalDestruction-XS',
    },
    requires => { },
    dynamic_config => 0,
  },
  ($mymeta and !$mymeta_works) ? ( 'NO_MYMETA' => 1 ) : (),
);

WriteMakefile(%WriteMakefileArgs);
