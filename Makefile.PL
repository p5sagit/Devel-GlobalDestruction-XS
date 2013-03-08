use strict;
use warnings;

require 5.006;

use ExtUtils::MakeMaker;

my $mymeta_works = eval { ExtUtils::MakeMaker->VERSION('6.5707'); 1 };
my $mymeta = $mymeta_works || eval { ExtUtils::MakeMaker->VERSION('6.5702'); 1 };

my %META_BITS = (
);
my %RUN_DEPS = (
);

my %WriteMakefileArgs = (
  NAME                => 'Devel::GlobalDestruction::XS',
  AUTHOR              => 'Yuval Kogman <nothingmuch@woobling.org>',
  VERSION_FROM        => 'lib/Devel/GlobalDestruction/XS.pm',
  ABSTRACT_FROM       => 'lib/Devel/GlobalDestruction/XS.pm',
  LICENSE             => 'perl',
  INSTALLDIRS         => 'site',
  PL_FILES            => { },
  MIN_PERL_VERSION    => '5.006',
  PREREQ_PM           => \%RUN_DEPS,
  CONFIGURE_REQUIRES  => { 'ExtUtils::CBuilder' => 0.27 },
  META_ADD => {
    resources => {
      repository => 'git://git.shadowcat.co.uk/p5sagit/Devel-GlobalDestruction-XS.git',
      bugtracker => 'http://rt.cpan.org/Public/Dist/Display.html?Name=Devel-GlobalDestruction-XS',
    },
    requires => \%RUN_DEPS,
    dynamic_config => 0,
  },
  ($mymeta and !$mymeta_works) ? ( 'NO_MYMETA' => 1 ) : (),
);

unless ( eval { ExtUtils::MakeMaker->VERSION('6.56') } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION('6.52') };

WriteMakefile(%WriteMakefileArgs);

