#!/usr/bin/perl

use warnings;
use strict;

my $filename = "fasta.txt";

open(FASTA,"<","$filename") or die "Couldn't open $filename: $!" ;

while (<FASTA>)
{ 
    if ($_=~/^>/)
    {
         print "$_" ;
    }
};

close FASTA or die "Couldn't close $filename: $!" ;
