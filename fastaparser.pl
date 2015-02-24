#!/usr/bin/perl

use warnings;
use strict;

my $filename = "fasta.txt";
my %sequence = ();

open(FASTA,"<","$filename") or die "Couldn't open $filename: $!" ;

while (<FASTA>)
{ 
    if ($_=~/^>(\w+)\s\w+/)
    {
	$sequence{$1}="";
    }
};

foreach (keys %sequence)
{
    print "$_\n";
}

close FASTA or die "Couldn't close $filename: $!" ;
