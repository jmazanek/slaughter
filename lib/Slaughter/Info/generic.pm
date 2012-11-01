#!/usr/bin/perl -w

=head1 NAME

Slaughter::Info::generic - Perl Automation Tool Helper generic info implementation

=cut

=head1 SYNOPSIS

This module is the generic versions of the Slaughter information-gathering
module.

Modules beneath the Slaughter::Info namespace are called when slaughter
is executed, they are intended to populate a hash with system information
about the current host.

This module is loaded when no specific module matches the local system,
and is essentially a no-operation module.

Usage is:


=for example begin

     use Slaughter::Info::generic;

     my $obj  = Slaughter::Info::generic->new();
     my $data = $obj->getInformation();

=for example end

The data retrieved by this generic module is almost nothing.

=cut


=head1 AUTHOR

 Steve
 --
 http://www.steve.org.uk/

=cut

=head1 LICENSE

Copyright (c) 2010-2012 by Steve Kemp.  All rights reserved.

This module is free software;
you can redistribute it and/or modify it under
the same terms as Perl itself.
The LICENSE file contains the full text of the license.

=cut


use strict;
use warnings;


package Slaughter::Info::generic;




=head2 new

Create a new instance of this object.

=cut

sub new
{
    my ( $proto, %supplied ) = (@_);
    my $class = ref($proto) || $proto;

    my $self = {};
    bless( $self, $class );
    return $self;

}


=head2 getInformation

This function retrieves meta-information about the current host,
and is the fall-back module which is used if a system-specific
information module cannot be loaded.

The return value is a hash-reference of data determined dynamically.

Currently the following OS-specific modules exist:

=over 8

=item Slaughter::Info::linux

=item Slaughter::Info::MSWin32

=back

=cut

sub getInformation
{
    my ($self) = (@_);

    #
    #  The data we will return.
    #
    my $ref;

    $ref->{ 'unknown' } = "all";

    # return the data.
    return ($ref);
}



1;
