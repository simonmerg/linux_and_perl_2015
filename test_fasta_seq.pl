#!/usr/bin/perl

use strict;
use warnings;
use Test::More;

require_ok ('fasta_seq');

my $ralph = new_ok ('fasta_seq');

can_ok('fasta_seq', 'id');

done_testing();

