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
    'meta-spec' => { version => 2.0 },
    resources => {
      repository => {
        url => 'git://git.shadowcat.co.uk/p5sagit/Devel-GlobalDestruction-XS.git',
        web => 'http://git.shadowcat.co.uk/gitweb/gitweb.cgi?p=p5sagit/Devel-GlobalDestruction-XS.git',
        type => 'git',
      },
      bugtracker => {
        web => 'https://rt.cpan.org/Public/Dist/Display.html?Name=Devel-GlobalDestruction-XS',
        mailto => 'bug-Devel-GlobalDestruction-XS@rt.cpan.org',
      },
      x_IRC => 'irc://irc.perl.org/#toolchain',
      license => [ 'http://dev.perl.org/licenses/' ],
    },
    requires => { },
    dynamic_config => 0,
  },
  ($mymeta and !$mymeta_works) ? ( 'NO_MYMETA' => 1 ) : (),
);

WriteMakefile(%WriteMakefileArgs);
