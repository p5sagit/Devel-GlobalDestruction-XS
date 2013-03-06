package Devel::GlobalDestruction::XS;
use strict;
use warnings;

our $VERSION = '0.00_01';

require XSLoader;
XSLoader::load(__PACKAGE__, $VERSION);

1;  # keep require happy

__END__

=head1 NAME

Devel::GlobalDestruction::XS - Faster implementation of the Devel::GlobalDestruction API

=head1 SYNOPSIS

    use Devel::GlobalDestruction;

=head1 DESCRIPTION

This is an XS backend for L<Devel::GlobalDestruction> and should be used through that module.

=head1 AUTHORS

Yuval Kogman E<lt>nothingmuch@woobling.orgE<gt>

Florian Ragwitz E<lt>rafl@debian.orgE<gt>

Jesse Luehrs E<lt>doy@tozt.netE<gt>

Peter Rabbitson E<lt>ribasushi@cpan.orgE<gt>

Arthur Axel 'fREW' Schmidt E<lt>frioux@gmail.comE<gt>

Elizabeth Mattijsen E<lt>liz@dijkmat.nlE<gt>

Greham Knop E<lt>haarg@haarg.orgE<gt>

=head1 COPYRIGHT

    Copyright (c) 2008 Yuval Kogman. All rights reserved
    This program is free software; you can redistribute
    it and/or modify it under the same terms as Perl itself.

=cut
