#!/usr/bin/perl

use strict;
use warnings;
use Test::More;

require_ok ('fasta_seq');

my $ralph = new_ok ('fasta_seq',['ralph']);

can_ok('fasta_seq', 'id');

is($ralph->id,'ralph','get_id');

$ralph->id('willi');
is($ralph->id,'willi','set_id');

done_testing();

