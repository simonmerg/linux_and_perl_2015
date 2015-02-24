#!/usr/bin/perl

use warnings;
use strict;

sub pars
{
    my $file = $_[0];

    open(FASTA,"<","$file") or die "Couldn't open $file: $!" ;

    while (<FASTA>)
    { 
	my $line = $_ ;
	if ($line~=/^>(\w+)\s(\w+)/)
	{
	    $1 = 
	}
    };

    close FASTA or die "Couldn't close $file: $!" ;

}



