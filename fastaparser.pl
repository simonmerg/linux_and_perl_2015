#!/usr/bin/perl

use warnings;
use strict;

my $filename = "fasta.txt";
my %sequence = ();
my $key = "";

open(FASTA,"<","$filename") or die "Couldn't open $filename: $!" ;

while (<FASTA>)
{ 
    if ($_=~/^>(\w+)\s\w+/)
    {
	$sequence{$1}="";
	$key = $1;
    }
    else
    {
	$sequence{$key}=$sequence{$key}."$_" ;
    }
}

foreach (keys %sequence)
{
    print "$_\t $sequence{$_} \n";
}

close FASTA or die "Couldn't close $filename: $!" ;
